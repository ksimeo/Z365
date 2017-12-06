package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.dto.Message;
import com.ximeo.nazaru.zhivorost365.domain.dto.PasswInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.CurrencyType;
import com.ximeo.nazaru.zhivorost365.domain.models.MeasureUnit;
import com.ximeo.nazaru.zhivorost365.domain.models.Product;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import com.ximeo.nazaru.zhivorost365.service.ProductService;
import com.ximeo.nazaru.zhivorost365.service.QuestionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    private QuestionService questServ;
    private OrderService ordServ;

    private ProductService prodServ;

    @RequestMapping(value = "/admins/prods", method = RequestMethod.GET)
    public String showProductsList(Model uiModel) {
        logger.info("showProductsPage()");
//        System.err.println("Запрос поступил!!!");
        List<Product> prods = prodServ.getAll();
        uiModel.addAttribute("products", prods);
        uiModel.addAttribute("units", MeasureUnit.values());
        uiModel.addAttribute("currencies", CurrencyType.values());
        uiModel.addAttribute("prodForm", new Product());
        uiModel.addAttribute("count", questServ.getUnreadedQuestionCount());
        uiModel.addAttribute("count1", ordServ.getUnreadedOrderCount());
        uiModel.addAttribute("passwForm", new PasswInfo());
        return "admins/prods";
    }

    @RequestMapping(value = "/admins/prods", method = RequestMethod.GET, params = "form")
    public String showNewProductForm(Model uiModel) {
        Product prod = new Product();
        uiModel.addAttribute("currencies", CurrencyType.values());
        uiModel.addAttribute("units", MeasureUnit.values());
        uiModel.addAttribute("prodForm", prod);
        return "admins/prdfrm";
    }

    @RequestMapping(value = "/admins/prods/{id}", method = RequestMethod.GET)
    public String showEditProductForm(@PathVariable("id") int prodId, Model uiModel) {
        Product prod = prodServ.getById(prodId);
        uiModel.addAttribute("currencies", CurrencyType.values());
        uiModel.addAttribute("units", MeasureUnit.values());
        uiModel.addAttribute("prodForm", prod);
        return "admins/prdfrm";
    }

    @RequestMapping(value = "/admins/prods", method = RequestMethod.POST)
    public String saveProduct(Product model, Model uiModel, HttpServletResponse resp, RedirectAttributes redAttr) {
        logger.info("saveProduct(): {}", model);
        Message msg = new Message();
        try {
            prodServ.addProduct(model);
            msg.setType("success");
            if (model.isNew()) msg.setMessage("Новый продукт добален.");
            else msg.setMessage("Изменения были сохранены.");
        } catch (Exception e) {
            logger.error("saveProduct()");
            msg.setType("danger");
            msg.setMessage("Ошибка. Попробуйте повторить позже.");
            uiModel.addAttribute("msg", msg);
            return "admins/prods";
        }
            redAttr.addFlashAttribute("msg", msg);
            return "redirect:/admins/prods";
    }

    @RequestMapping(value = "/admins/prods/{id}/delete", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id")long id, HttpServletResponse resp, RedirectAttributes redAttr) {
        logger.info("deleteProduct()");
        Message msg = new Message();
        try {
            prodServ.delProduct(id);
            msg.setType("success");
            msg.setMessage("Продукт успешно удален.");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("deleteProduct()");
            return "admins/prods";
        }
            redAttr.addFlashAttribute("msg", msg);
            return "forward:/admins/prods";
    }

    @Autowired
    public void setProdServ(ProductService prodServ) {
        this.prodServ = prodServ;
    }

    @Autowired
    public void setQuestServ(QuestionService questServ) {
        this.questServ = questServ;
    }

    @Autowired
    public void setOrdServ(OrderService ordServ) {
        this.ordServ = ordServ;
    }
}
package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.models.CurrencyType;
import com.ximeo.nazaru.zhivorost365.domain.models.MeasureUnit;
import com.ximeo.nazaru.zhivorost365.domain.models.Product;
import com.ximeo.nazaru.zhivorost365.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ProductController {

    private ProductService prodServ;

//    @Inject
//    public ProductController(ProductService prodServ) {
//        this.prodServ = prodServ;
//    }

    @RequestMapping(value = "/admins/prods", method = RequestMethod.GET)
    public String showAllProducts(Model uiModel) {
        System.err.println("Запрос поступил!!!");
        List<Product> prods = prodServ.getAll();
        uiModel.addAttribute("products", prods);
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
    public String saveProduct(Product prod, HttpServletResponse resp) {
//        try {
            prodServ.addProduct(prod);
            return "redirect:/admins/prods";
//            resp.sendRedirect("/admin/prods");
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
    }

    @RequestMapping(value = "/admins/prods/{id}/delete", method = RequestMethod.GET)
    public String delProduct(@PathVariable("id")long id, HttpServletResponse resp) {
            prodServ.delProduct(id);
            return "forward:/admins/prods";
    }

    @Autowired
    public void setProdServ(ProductService prodServ) {
        this.prodServ = prodServ;
    }
}
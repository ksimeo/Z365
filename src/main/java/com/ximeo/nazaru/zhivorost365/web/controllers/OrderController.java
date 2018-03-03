package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.domain.dto.OrderGrid;
import com.ximeo.nazaru.zhivorost365.domain.dto.OrderInfo;
import com.ximeo.nazaru.zhivorost365.domain.dto.PasswInfo;
import com.ximeo.nazaru.zhivorost365.domain.dto.UserInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.Customer;
import com.ximeo.nazaru.zhivorost365.domain.models.Order;
import com.ximeo.nazaru.zhivorost365.domain.models.Product;
import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import com.ximeo.nazaru.zhivorost365.service.ProductService;
import com.ximeo.nazaru.zhivorost365.service.QuestionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class OrderController {
    private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

    private ProductService prodServ;
    private QuestionService questServ;
    private OrderService ordServ;
    private MessageSource msgSrc;

    @RequestMapping(value = "/admins/orders", method = RequestMethod.GET)
    public String showMainPage(Model uiModel, HttpServletRequest req, HttpSession session) {
        logger.info("showStartPage(): user with host {} has entered on start admins page.", req.getHeader("host"));
        uiModel.addAttribute("count", questServ.getUnreadedQuestionCount());
        uiModel.addAttribute("count1", ordServ.getUnreadedOrderCount());
        uiModel.addAttribute("passwForm", new PasswInfo());
        return "admins/ordrs";
    }

    @RequestMapping(value = "/orders", method = RequestMethod.GET)
    public String showOrderForm(Model uiModel, @Param("amount") int amount, @Param("type") int type,
                                HttpServletRequest req, HttpSession session) {
        List<Product> prods = prodServ.getAll();
        OrderInfo ordInfo = new OrderInfo();
        if (amount != 0 && type != 0) {
            ordInfo.setAmount(amount);
            ordInfo.setType(type);
            uiModel.addAttribute("prodType", type);
        }
        uiModel.addAttribute("orderForm", ordInfo);
        uiModel.addAttribute("prods", prods);
        uiModel.addAttribute("questForm", new Question());
        session.setAttribute("prods", prods);
        return "custom/ordrfrm";
    }

    @RequestMapping(value = "/orders", method = RequestMethod.POST)
    public String doOrdering(OrderInfo model, HttpServletRequest req, HttpSession session) {
        Customer cust = (Customer) session.getAttribute("customer");
        if (cust == null) {
            String phone = (String) session.getAttribute("phone");
            UserInfo usrInfo = (UserInfo) session.getAttribute("usrForm");
            cust = new Customer(phone, usrInfo.getName(), usrInfo.getSurname(), usrInfo.getEmail());
        }
        List<Product> products = (List<Product>) session.getAttribute("prods");
        Product prod = products.get(model.getType());
        return "redirect:/branch2";
    }

    @RequestMapping(value = "admins/orders/listgrid", method = RequestMethod.GET, produces="application/json")
    @ResponseBody
    public OrderGrid listGrid(@RequestParam(value = "page", required = false) Integer page,
                                @RequestParam(value = "rows", required = false) Integer rows,
                                @RequestParam(value = "sidx", required = false) String sortBy,
                                @RequestParam(value = "sord", required = false) String order) {
        logger.info("Listing orders for grid with page: {}, rows: {}", page, rows);
        logger.info("Listing orders for grid with sort: {}, order: {}", sortBy, order);
        // Process order by
        Sort sort = null;
        String orderBy = sortBy;
        if (orderBy != null && orderBy.equalsIgnoreCase("createDate"))
            orderBy = "createDate";
        if (orderBy != null && order != null) {
            if (order.equals("desc")) {
                sort = new Sort(Sort.Direction.DESC, orderBy);
            } else
                sort = new Sort(Sort.Direction.ASC, orderBy);
        }
        // Constructs page request for current page
        // Note: page number for Spring Data JPA starts with 0, while jqGrid starts with 1
        PageRequest pageRequest;
        if (sort != null) {
            pageRequest = new PageRequest(page - 1, rows, sort);
        } else {
            pageRequest = new PageRequest(page - 1, rows);
        }
        Page<Order> ordersPage = ordServ.getOrderPage(pageRequest);
        List<Order> ordrs2 = Lists.newArrayList(ordersPage.iterator());
        for (Order ord : ordrs2) {
            System.out.println(ord);
        }
        OrderGrid ordGrid1 = new OrderGrid();
        ordGrid1.setCurrentPage(ordersPage.getNumber() + 1);
        ordGrid1.setTotalPages(ordersPage.getTotalPages());
        ordGrid1.setTotalRecords(ordersPage.getTotalElements());
        ordGrid1.setOrderData(ordrs2);
        return ordGrid1;
    }

    private void fillInModel(Model uiModel) {
        uiModel.addAttribute("count", questServ.getUnreadedQuestionCount());
        uiModel.addAttribute("count1", ordServ.getUnreadedOrderCount());
        uiModel.addAttribute("passwForm", new PasswInfo());
    }

    @Autowired
    public void setQuestServ(QuestionService questServ) {
        this.questServ = questServ;
    }

    @Autowired
    public void setProdServ(ProductService prodServ) {
        this.prodServ = prodServ;
    }

    @Autowired
    public void setOrdServ(OrderService ordServ) {
        this.ordServ = ordServ;
    }

    @Autowired
    public void setMsgSrc(MessageSource msgSrc) {
        this.msgSrc = msgSrc;
    }
}
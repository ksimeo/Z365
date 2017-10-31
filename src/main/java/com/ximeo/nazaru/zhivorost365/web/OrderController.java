package com.ximeo.nazaru.zhivorost365.web;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.domain.dto.OrderGrid;
import com.ximeo.nazaru.zhivorost365.domain.dto.OrderInfo;
import com.ximeo.nazaru.zhivorost365.domain.dto.UserInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.*;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import com.ximeo.nazaru.zhivorost365.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

    private final static Logger logger = LoggerFactory.getLogger(OrderController.class);

    private ProductService prodServ;

    private OrderService ordServ;

    @RequestMapping(value = "/admins/orders", method = RequestMethod.GET)
    public String showMainPage(Model uiModel, HttpServletRequest req, HttpSession session) {
        logger.info("showStartPage(): user with host {} has entered on start admins page.", req.getHeader("host"));
        User usr = new User("testuser", "test", UserRole.USER);
        usr.setId(1L);
        session.setAttribute("user", usr);
        List<Order> ordrs = ordServ.getOrders();
        uiModel.addAttribute("orders", ordrs);
        return "admins/main";
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
        Order ord = new Order(cust, prod, model.getAmount());
        ordServ.addOrder(ord);
        return "redirect:/branch2";
    }

    @RequestMapping(value = "/admins/orders/listgrid", method = RequestMethod.GET, produces="application/json")
    @ResponseBody
    public OrderGrid listGrid(@RequestParam(value = "page", required = false) Integer page,
                                @RequestParam(value = "rows", required = false) Integer rows,
                                @RequestParam(value = "sidx", required = false) String sortBy,
                                @RequestParam(value = "sord", required = false) String order) {

        System.err.println("Запрос получен!!!");

        logger.info("Listing contacts for grid with page: {}, rows: {}", page, rows);
        logger.info("Listing contacts for grid with sort: {}, order: {}", sortBy, order);

        // Process order by
        Sort sort = null;
        String orderBy = sortBy;
        if (orderBy != null && orderBy.equals("birthDateString"))
            orderBy = "birthDate";

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

        Page<Order> contactPage = ordServ.getOrderPage(pageRequest);

        // Construct the grid data that will return as JSON data
        OrderGrid contactGrid = new OrderGrid();

        contactGrid.setCurrentPage(contactPage.getNumber() + 1);
        contactGrid.setTotalPages(contactPage.getTotalPages());
        contactGrid.setTotalRecords(contactPage.getTotalElements());

        contactGrid.setOrderData(Lists.newArrayList(contactPage.iterator()));

        return contactGrid;
    }

    @Autowired
    public void setProdServ(ProductService prodServ) {
        this.prodServ = prodServ;
    }

    @Autowired
    public void setOrdServ(OrderService ordServ) {
        this.ordServ = ordServ;
    }
}
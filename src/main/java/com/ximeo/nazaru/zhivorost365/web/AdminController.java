package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.models.Order;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    private final static Logger logger = LoggerFactory.getLogger(AdminController.class);

    private OrderService ordServ;

    @RequestMapping
    public String showMain(Model uiModel) {
        List<Order> ordrs = ordServ.getOrders();
        uiModel.addAttribute("orders", ordrs);
        return "private/main";
    }

    @Autowired
    public void setOrdServ(OrderService ordServ) {
        this.ordServ = ordServ;
    }
}
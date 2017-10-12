package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.dto.OrderInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrderController {
    private final static Logger logger = LoggerFactory.getLogger(OrderController.class);

    @RequestMapping(value = "/order", method = RequestMethod.GET)
    public String showOrderForm(Model uiModel, @Param("amount") int amount, @Param("type") int type) {
        OrderInfo ordInfo = new OrderInfo();
        ordInfo.setAmount(amount);
        ordInfo.setType(type);
        uiModel.addAttribute("orderForm", ordInfo);
        return "public/orderform";
    }

    @RequestMapping(value = "/order", method = RequestMethod.POST)
    public String doOrdering(OrderInfo model) {

        return "redirect:/fork2";
    }
}

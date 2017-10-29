package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.models.Order;
import com.ximeo.nazaru.zhivorost365.domain.models.User;
import com.ximeo.nazaru.zhivorost365.domain.models.UserRole;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    private final static Logger logger = LoggerFactory.getLogger(AdminController.class);

    private OrderService ordServ;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String showMain(Model uiModel, HttpSession session) {
        User usr = new User("testuser", "test", UserRole.USER);
        usr.setId(1L);
        session.setAttribute("user", usr);
        List<Order> ordrs = ordServ.getOrders();
        uiModel.addAttribute("orders", ordrs);
        return "admins/main";
    }

    @Autowired
    public void setOrdServ(OrderService ordServ) {
        this.ordServ = ordServ;
    }
}
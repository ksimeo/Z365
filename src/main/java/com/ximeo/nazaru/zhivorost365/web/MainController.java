package com.ximeo.nazaru.zhivorost365.web;


import com.ximeo.nazaru.zhivorost365.domain.dto.PhoneInfo;
import com.ximeo.nazaru.zhivorost365.service.CustomerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;


@Controller
public class MainController {

    private final static Logger logger = LoggerFactory.getLogger(MainController.class);

    private CustomerService custServ;

    @RequestMapping({"/", "/index"})
    public String showStartPage(HttpServletRequest req, Model uiModel) {
        logger.info("showStartPage(): user with IP {} has entered on start page.", req.getHeader("host"));
        Cookie[] cookies = req.getCookies();
        PhoneInfo phoneform = new PhoneInfo();
        if (cookies != null && cookies.length != 0) {
            String parth1 = null;
            String parth2 = null;
            String parth3 = null;
            String parth4 = null;
            for (Cookie cookie : cookies) {
                if(cookie.getName().equals("parth1")) parth1 = cookie.getValue();
                if(cookie.getName().equals("parth2")) parth2 = cookie.getValue();
                if(cookie.getName().equals("parth3")) parth3 = cookie.getValue();
                if(cookie.getName().equals("parth4")) parth4 = cookie.getValue();
            }
            phoneform.setParth1(parth1);
            phoneform.setParth2(parth2);
            phoneform.setParth3(parth3);
            phoneform.setParth4(parth4);
        }
        uiModel.addAttribute("phoneForm", phoneform);
        return "public/phoneform";
    }

    @Autowired
    public void setCustServ(CustomerService custServ) {
        this.custServ = custServ;
    }
}
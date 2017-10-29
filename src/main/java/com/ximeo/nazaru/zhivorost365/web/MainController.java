package com.ximeo.nazaru.zhivorost365.web;


import com.ximeo.nazaru.zhivorost365.domain.dto.PhoneInfo;
import com.ximeo.nazaru.zhivorost365.service.CustomerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;


@Controller
public class MainController {

    private final static Logger logger = LoggerFactory.getLogger(MainController.class);

    private CustomerService custServ;

//    @RequestMapping({"/", "/index"})
//    public String showErrorPage() {
//        return "errorpages/error404";
//    }

    @RequestMapping({"/", "/index"})
    public String showStartPage(HttpServletRequest req, Model uiModel,
                                @CookieValue(value = "parth1", required = false) Cookie cookieParth1,
                                @CookieValue(value = "parth2", required = false) Cookie cookieParth2,
                                @CookieValue(value = "parth3", required = false) Cookie cookieParth3,
                                @CookieValue(value = "parth4", required = false) Cookie cookieParth4
                                ) {
        logger.info("showStartPage(): user with IP {} has entered on start page.", req.getHeader("host"));
        PhoneInfo phoneform = new PhoneInfo();
        if (cookieParth1 != null && cookieParth2 != null && cookieParth3 != null && cookieParth4 != null) {
            String parth1 = cookieParth1.getValue();
            String parth2 = cookieParth2.getValue();
            String parth3 = cookieParth3.getValue();
            String parth4 = cookieParth4.getValue();
            phoneform.setParth1(parth1);
            phoneform.setParth2(parth2);
            phoneform.setParth3(parth3);
            phoneform.setParth4(parth4);
        }
        uiModel.addAttribute("phoneForm", phoneform);
        return "custom/phoneform";
    }

    @Autowired
    public void setCustServ(CustomerService custServ) {
        this.custServ = custServ;
    }
}
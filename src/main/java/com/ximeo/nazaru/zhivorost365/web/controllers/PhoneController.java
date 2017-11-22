package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.dto.PhoneInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.Customer;
import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import com.ximeo.nazaru.zhivorost365.service.CustomerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class PhoneController {
    private static final Logger logger = LoggerFactory.getLogger(PhoneController.class);

    private CustomerService custServ;

    @RequestMapping(value = {"/phone"}, method = RequestMethod.GET)
    public String showStartPage(Model uiModel, HttpServletRequest req,
                                @CookieValue(value = "parth1", required = false) Cookie cookieParth1,
                                @CookieValue(value = "parth2", required = false) Cookie cookieParth2,
                                @CookieValue(value = "parth3", required = false) Cookie cookieParth3,
                                @CookieValue(value = "parth4", required = false) Cookie cookieParth4) {
        logger.info("showStartPage(): user with host {} has entered on start custom page.", req.getHeader("host"));
        PhoneInfo phoneform = new PhoneInfo();
        uiModel.addAttribute("questForm", new Question());
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
        return "custom/starting";
    }

    @RequestMapping(value = {"/phone"}, method = RequestMethod.POST)
    public String enterPhoneNumber(Model uiModel, PhoneInfo phoneInfo, HttpServletRequest req, HttpServletResponse resp,
                                   HttpSession session) {
        String phone = phoneInfo.toString();
        logger.info("showResultPage(): the phone number {} has been entered.");
//        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(60*20);
        session.setAttribute("phone", phone);
        Cookie cookie1 = new Cookie("parth1", phoneInfo.getParth1());
        cookie1.setMaxAge(60*60*24*14);
        resp.addCookie(cookie1);
        Cookie cookie2 = new Cookie("parth2", phoneInfo.getParth2());
        cookie1.setMaxAge(60*60*24*14);
        resp.addCookie(cookie2);
        Cookie cookie3 = new Cookie("parth3", phoneInfo.getParth3());
        cookie3.setMaxAge(60*60*24*14);
        resp.addCookie(cookie3);
        Cookie cookie4 = new Cookie("parth4", phoneInfo.getParth4());
        cookie4.setMaxAge(60*60*24*14);
        resp.addCookie(cookie4);
        Customer cust = custServ.getById(phone);
        if (cust != null) {
            session.setAttribute("customer", cust);
            logger.info("showResultPage(): The visitor has been recognised as a identified customer.");
            uiModel.addAttribute("questForm", new Question());
            return "custom/branch1";
        }
        session.setAttribute("phone", phone);
        logger.info("showResultPage(): The visitor has been recognised as a new customer.");
        return "redirect:/customers?form";
    }

    @Autowired
    public void setCustServ(CustomerService custServ) {
        this.custServ = custServ;
    }
}

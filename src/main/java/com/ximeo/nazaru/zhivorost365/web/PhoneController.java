package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.dto.PhoneInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.Customer;
import com.ximeo.nazaru.zhivorost365.service.CustomerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

    @RequestMapping(value = "/phone", method = RequestMethod.POST)
    public String enterPhoneNumber(PhoneInfo phoneInfo, HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
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
            logger.info("The visitor has been recognised as a familiar customer.");
            return "public/fork1";
        }
        logger.info("The user has been recognised as a new customer.");
        return "redirect:/userform";
    }

    @Autowired
    public void setCustServ(CustomerService custServ) {
        this.custServ = custServ;
    }
}

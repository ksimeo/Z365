package com.ximeo.nazaru.zhivorost365.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MailingController {

    @RequestMapping(value = "/admins/mailing", method = RequestMethod.GET)
    public String showMailingPage() {
        return "admins/mailing";
    }
}

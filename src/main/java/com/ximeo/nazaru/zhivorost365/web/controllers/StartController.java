package com.ximeo.nazaru.zhivorost365.web.controllers;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class StartController {

    private final Logger logger = LoggerFactory.getLogger(StartController.class);

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String showStartCustomPage() {
        return "redirect:/phone";
    }

    @RequestMapping(value = {"/admin", "/admins", "/admin/orders"}, method = RequestMethod.GET)
    public String showStartAdminsPage() {
        return "redirect:/admins/orders";
    }
}
package com.ximeo.nazaru.zhivorost365.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StatController {

    @RequestMapping(value = "/admins/stat", method = RequestMethod.GET)
    public String showStatisticsPage() {
        return "admins/stat";
    }
}

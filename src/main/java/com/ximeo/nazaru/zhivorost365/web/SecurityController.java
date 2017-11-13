package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.dto.Message;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

@Controller
@RequestMapping(value = "/security")
public class SecurityController {

    private final Logger logger = LoggerFactory.getLogger(SecurityController.class);

    @RequestMapping(value = "/loginfil", method = RequestMethod.GET)
    public String loginFail(Model uiModel, Locale locale) {

        uiModel.addAttribute("message", new Message("error", "Неверный логин или пароль."));
        return "admins/login";
    }
}

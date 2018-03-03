package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.dto.Message;
import com.ximeo.nazaru.zhivorost365.domain.dto.PasswInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.User;
import com.ximeo.nazaru.zhivorost365.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Controller
public class SecurityController {
    private final Logger logger = LoggerFactory.getLogger(SecurityController.class);

    private UserService usrServ;
    private MessageSource messageSource;

    @RequestMapping(value = "/loginfail", method = RequestMethod.GET)
    public String loginFail(Model uiModel, Locale locale) {
        logger.info("Login failed detected");
        uiModel.addAttribute("message", new Message("error",
                messageSource.getMessage("message_login_fail", new Object[]{}, locale)));
        return "admins/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginPage(HttpServletRequest req) {
        logger.info("showLoginPage(): user with host {} has entered on log in page", req.getHeader("host"));
        return "admins/login";
    }

    @RequestMapping(value = "/admins/changepassw", method = RequestMethod.POST)
    public String changePassword(PasswInfo passwInfo, RedirectAttributes redAttr) {
        logger.info("changeInfo(): user with id {} has changed his password.", passwInfo.getUserId());
        Message msg = new Message();
        try {
            User usr = usrServ.getUser(passwInfo.getUserId());
            if (usr != null) {
                if ((usr.getPassword()).equals(passwInfo.getOldPassword())) {
                    usr.setPassword(passwInfo.getNewPassword());
                    usrServ.addUser(usr);
                    msg.setType("success");
                    msg.setMessage("Пароль успешно изменен.");
                } else {
                    msg.setType("warning");
                    msg.setMessage("Вы ввели неправильный пароль.");
                }
            } else {
                msg.setType("danger");
                msg.setMessage("Ошибка. Попробуйте повторить позже.");
            }
        } catch (Exception e) {
            logger.error("changePassword()");
            msg.setType("danger");
            msg.setMessage("Ошибка. Попробуйте повторить позже.");
        }
        redAttr.addFlashAttribute("msg", msg);
        return "redirect:/admins/orders";
    }

    @Autowired
    public void setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
}
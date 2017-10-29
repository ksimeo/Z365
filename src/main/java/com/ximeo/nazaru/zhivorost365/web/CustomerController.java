package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.dto.UserInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import static com.ximeo.nazaru.zhivorost365.utilities.SessionHelper.*;

@Controller(value = "/customers")
public class CustomerController {
    private final static Logger logger = LoggerFactory.getLogger(CustomerController.class);

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String showCustomerForm(Model uiModel) {
        UserInfo usrForm = new UserInfo();
        uiModel.addAttribute("usrForm", usrForm);
        return "custom/regcustomerform";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String enterUserForm(UserInfo model, HttpServletRequest req, HttpSession session) {
        String res;
        if ((res = checkPoint1(req)) != null) return res;
        logger.info("User has entered name: {}, surname: {}, email: {}, region: {}", model.getName(), model.getSurname(),
                model.getEmail(), model.getRegion());
        session.setAttribute("user", model);
        return "redirect:/fork1";
    }

    private static String checkPoint1(HttpServletRequest req) {
        if (checkSessionExists(req)) {
            if (isIdentifiedUser(req)) return "index";
            if (checkPhoneEntered(req)) return null;
        }
        return null;
    }
}
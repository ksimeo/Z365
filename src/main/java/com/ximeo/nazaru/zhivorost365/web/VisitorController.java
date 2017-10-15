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

import static com.ximeo.nazaru.zhivorost365.utilities.SessionHelper.checkPhoneEntered;
import static com.ximeo.nazaru.zhivorost365.utilities.SessionHelper.checkSessionExists;
import static com.ximeo.nazaru.zhivorost365.utilities.SessionHelper.isIdentifiedUser;

@Controller(value = "/userform")
public class VisitorController {
    private final static Logger logger = LoggerFactory.getLogger(VisitorController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String showUserForm(Model uiModel) {
        UserInfo usrForm = new UserInfo();
        uiModel.addAttribute("usrForm", usrForm);
        return "public/userform";
    }

    @RequestMapping(method = RequestMethod.POST)
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

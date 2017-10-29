package com.ximeo.nazaru.zhivorost365.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import static com.ximeo.nazaru.zhivorost365.utilities.SessionHelper.*;

@Controller
public class RedirectController {
    private final static Logger logger = LoggerFactory.getLogger(RedirectController.class);

    @RequestMapping(value = "fork1", method = RequestMethod.GET)
    public String showFork1(HttpServletRequest req) {
        String res;
        if ((res = checkPoint2(req)) != null) return res;
        return "custom/fork1";
    }

    @RequestMapping(value = "/calc", method = RequestMethod.GET)
    public String showCalculation(HttpServletRequest req) {
        String res;
        if ((res = checkPoint2(req)) != null) return res;
        return "custom/calc";
    }

    @RequestMapping(value = "/fork2", method = RequestMethod.GET)
    public String showFork2(HttpServletRequest req) {
        String res;
        if ((res = checkPoint2(req)) != null) return res;
        return "custom/fork2";
    }

    @RequestMapping(value = "/gratitude", method = RequestMethod.GET)
    public String showGratitude(HttpServletRequest req) {
        String res;
        if ((res = checkPoint2(req)) != null) return res;
        req.getSession().invalidate();
        return "custom/gratitude";
    }


    private static String checkPoint2(HttpServletRequest req) {
        if (checkSessionExists(req)) {
            if (isIdentifiedUser(req)) return "fork1";
            if (checkUserForm(req)) return "fork1";
        }
        return null;
    }
}
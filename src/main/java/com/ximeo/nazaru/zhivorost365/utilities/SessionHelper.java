package com.ximeo.nazaru.zhivorost365.utilities;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionHelper {

    public static boolean checkSessionExists(HttpServletRequest req) {
        if (req.getSession(false) != null) return true;
        return false;
    }

    public static boolean checkPhoneEntered(HttpServletRequest req) {
        if (!checkSessionExists(req)) return false;
        HttpSession session = req.getSession();
        if (req.getSession().getAttribute("phone") != null) return true;
        return false;
    }

    public static boolean checkUserForm(HttpServletRequest req) {
        if (!checkSessionExists(req)) return false;
        if (!checkPhoneEntered(req)) return false;
        if (req.getSession().getAttribute("user") != null) return true;
        return false;
    }

    public static boolean isIdentifiedUser(HttpServletRequest req) {
        if (!checkSessionExists(req)) return false;
        if (req.getSession().getAttribute("user") != null) return true;
        return false;
    }
}

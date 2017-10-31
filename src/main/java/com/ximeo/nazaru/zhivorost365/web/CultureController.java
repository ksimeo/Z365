package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.models.Culture;
import com.ximeo.nazaru.zhivorost365.service.CultureService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CultureController {
    private static final Logger logger = LoggerFactory.getLogger(CultureController.class);
    private CultureService cultServ;

    @RequestMapping(value = "/admins/cultures", method = RequestMethod.GET)
    public String showCultures(Model uiModel) {
        logger.info("showCultures()");
        uiModel.addAttribute("cults", cultServ.getCultures());
        return "admins/cults";
    }

    @RequestMapping(value = "/admins/cultures", method = RequestMethod.POST)
    public String setCulture(Culture culture) {
        logger.info("setCulture()");
        cultServ.addCulture(culture);
        return "redirect:admins/cultures";
    }

    @RequestMapping(value = "/admins/cultures/{id}")
    public String showCulture(@PathVariable("id") long id, Model uiModel) {
        logger.info("showCulture()");
        uiModel.addAttribute("cultures", cultServ.getCulture(id));
        return "admins/cult";
    }

    @Autowired
    public void setCultServ(CultureService cultServ) {
        this.cultServ = cultServ;
    }
}

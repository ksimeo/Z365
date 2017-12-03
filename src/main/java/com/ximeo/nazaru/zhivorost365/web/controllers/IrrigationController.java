package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.models.Irrigation;
import com.ximeo.nazaru.zhivorost365.service.IrrigationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IrrigationController {

    private static final Logger logger = LoggerFactory.getLogger(IrrigationController.class);

    private IrrigationService irrServ;

    @RequestMapping(value="/admins/irrs", method = RequestMethod.GET)
    public String showIrrigations(Model uiModel) {
        logger.info("showIrrigation()");
        uiModel.addAttribute("irrForm", irrServ.getAll());
        uiModel.addAttribute("newIrrForm", new Irrigation());
        return "admins/irrs";
    }

    @RequestMapping(value = "/admins/irrs", method = RequestMethod.POST)
    public String addNewIrr(Irrigation model) {
        logger.info("addNewIrr(): {}", model);
        irrServ.addOne(model);
        return "admins/irrs";
    }

    @Autowired
    public void setIrrServ(IrrigationService irrServ) {
        this.irrServ = irrServ;
    }
}

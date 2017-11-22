package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import com.ximeo.nazaru.zhivorost365.service.IrrigationService;
import com.ximeo.nazaru.zhivorost365.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CalculationController {
    private static final Logger logger = LoggerFactory.getLogger(CalculationController.class);

    private ProductService prodServ;

    private IrrigationService irrServ;

    @RequestMapping(value = "/calc", method = RequestMethod.GET)
    public String showCalcPage(HttpServletRequest req, Model uiModel) {
        String res;
        if ((res = RedirectController.checkPoint2(req)) != null) return res;
        uiModel.addAttribute("prods", prodServ.getAll());
        uiModel.addAttribute("irrigations", irrServ.getAll());
        uiModel.addAttribute("questForm", new Question());
        return "custom/calc";
    }

    @Autowired
    public void setProdServ(ProductService prodServ) {
        this.prodServ = prodServ;
    }

    @Autowired
    public void setIrrServ(IrrigationService irrServ) {
        this.irrServ = irrServ;
    }
}

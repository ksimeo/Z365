package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.dto.PasswInfo;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import com.ximeo.nazaru.zhivorost365.service.QuestionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MailingController {
    private static final Logger logger = LoggerFactory.getLogger(MailingController.class);
    private QuestionService questServ;
    private OrderService ordServ;

    @RequestMapping(value = "/admins/mailing", method = RequestMethod.GET)
    public String showMailingPage(Model uiModel) {
        logger.info("showMailingPage()");
        uiModel.addAttribute("count", questServ.getUnreadedQuestionCount());
        uiModel.addAttribute("count1", ordServ.getUnreadedOrderCount());
        uiModel.addAttribute("passwForm", new PasswInfo());
        return "admins/mailing";
    }

    @Autowired
    public void setQuestServ(QuestionService questServ) {
        this.questServ = questServ;
    }

    @Autowired
    public void setOrdServ(OrderService ordServ) {
        this.ordServ = ordServ;
    }
}

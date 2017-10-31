package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import com.ximeo.nazaru.zhivorost365.service.QuestionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Date;

@Controller
public class QuestionController {
    private static final Logger logger = LoggerFactory.getLogger(QuestionController.class);
    private QuestionService questServ;

    @RequestMapping(value = "/questions", method = RequestMethod.GET, params = "form")
    public String showQuestionForm(Model uiModel) {
        logger.info("showQuestionForm()");
        uiModel.addAttribute("questionForm", new Question());
        return "custom/questfrm";
    }

    @RequestMapping(value = "/questions", method = RequestMethod.POST)
    public String saveQuestionForm(Question qstn) {
        logger.debug("getQuestionForm(): {}", qstn);
        questServ.addQuestion(qstn);
        return "custom/thanks1";
    }

    @RequestMapping(value = "/admins/questions", method = RequestMethod.GET)
    public String getQuestionsList(Model uiModel) {
        logger.info("getQuestionsList()");
        uiModel.addAttribute("qstns", questServ.getQuestions());
        return "admins/qstns";
    }

    @RequestMapping(value = "/admins/question/{id}", method = RequestMethod.GET)
    public String showQuestion(@PathVariable("id") long id, Model uiModel) {
        logger.info("showQuestion()");
        uiModel.addAttribute("question", questServ.getQuestion(id));
        return "admins/qstn";
    }

    @RequestMapping(value = "/admins/question/{id}/view", method = RequestMethod.GET)
    public void setViewed(@PathVariable("id") long id) {
        logger.info("setViewed()");
        Question qstn = questServ.getQuestion(id);
        qstn.setReviewDate(new Date());
        questServ.addQuestion(qstn);
    }

    @Autowired
    public void setQuestServ(QuestionService questServ) {
        this.questServ = questServ;
    }
}

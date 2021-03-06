package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.domain.dto.PasswInfo;
import com.ximeo.nazaru.zhivorost365.domain.dto.QuestionGrid;
import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import com.ximeo.nazaru.zhivorost365.service.QuestionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class QuestionsController {
    private static final Logger logger = LoggerFactory.getLogger(QuestionsController.class);
    private QuestionService questServ;
    private OrderService ordServ;

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

    @RequestMapping(value = "/admins/quests", method = RequestMethod.GET)
    public String getQuestionsList(Model uiModel) {
        logger.info("getQuestionsList()");
//        uiModel.addAttribute("qstns", questServ.getQuestions());
        uiModel.addAttribute("count", questServ.getUnreadedQuestionCount());
        uiModel.addAttribute("count1", ordServ.getUnreadedOrderCount());
        uiModel.addAttribute("passwForm", new PasswInfo());
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
//        qstn.setReviewDate(new Date());
        questServ.addQuestion(qstn);
    }

    @RequestMapping(value = "admins/questions/listgrid", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
    @ResponseBody
    public QuestionGrid listGrid(@RequestParam(value = "page", required = false) Integer page,
                              @RequestParam(value = "rows", required = false) Integer rows,
                              @RequestParam(value = "sidx", required = false) String sortBy,
                              @RequestParam(value = "sord", required = false) String order) {

        logger.info("Listing contacts for grid with page: {}, rows: {}", page, rows);
        logger.info("Listing contacts for grid with sort: {}, order: {}", sortBy, order);

        // Process order by
        Sort sort = null;
        String orderBy = sortBy;
        if (orderBy != null && orderBy.equals("customerName"))
            orderBy = "customerName";

        if (orderBy != null && order != null) {
            if (order.equals("desc")) {
                sort = new Sort(Sort.Direction.DESC, orderBy);
            } else
                sort = new Sort(Sort.Direction.ASC, orderBy);
        }

        // Constructs page request for current page
        // Note: page number for Spring Data JPA starts with 0, while jqGrid starts with 1
        PageRequest pageRequest;

        if (sort != null) {
            pageRequest = new PageRequest(page - 1, rows, sort);
        } else {
            pageRequest = new PageRequest(page - 1, rows);
        }

        Page<Question> questionPage = questServ.getQuestionPage(pageRequest);

        // Construct the grid data that will return as JSON data
        QuestionGrid questionGrid = new QuestionGrid();

        questionGrid.setCurrentPage(questionPage.getNumber() + 1);
        questionGrid.setTotalPages(questionPage.getTotalPages());
        questionGrid.setTotalRecords(questionPage.getTotalElements());
        questionGrid.setQuestionData(Lists.newArrayList(questionPage.iterator()));

//        questionGrid.setQuestionData(Lists.newArrayList(questionPage));
        return questionGrid;
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

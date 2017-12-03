package com.ximeo.nazaru.zhivorost365.service.impl;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.dao.QuestionPagerRepository;
import com.ximeo.nazaru.zhivorost365.dao.QuestionsRepository;
import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import com.ximeo.nazaru.zhivorost365.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Repository
@Service("questServ")
public class QuestionServiceImpl implements QuestionService {

    private QuestionsRepository questDAO;

    private QuestionPagerRepository questPageDAO;

    @Override
    public void addQuestion(Question qstn) {
        questDAO.save(qstn);
    }

    @Transactional(readOnly = true)
    @Override
    public Question getQuestion(long id) {
        return questDAO.findOne(id);
    }

    @Transactional(readOnly = true)
    @Override
    public List<Question> getQuestions() {
        return Lists.newArrayList(questDAO.findAll());
    }

    @Override
    public Page<Question> getQuestionPage(Pageable pageable) {
        return questPageDAO.findAll(pageable);
    }

    @Override
    public void delQuestion(long id) {
        questDAO.delete(id);
    }

    @Autowired
    public void setQuestDAO(QuestionsRepository questDAO) {
        this.questDAO = questDAO;
    }

    @Autowired
    public void setQuestPageDAO(QuestionPagerRepository questPageDAO) {
        this.questPageDAO = questPageDAO;
    }
}
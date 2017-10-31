package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.Question;

import java.util.List;

public interface QuestionService {

    void addQuestion(Question qstn);
    Question getQuestion(long id);
    List<Question> getQuestions();
    void delQuestion(long id);
}
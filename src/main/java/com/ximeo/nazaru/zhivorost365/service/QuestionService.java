package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface QuestionService {

    void addQuestion(Question qstn);
    Question getQuestion(long id);
    List<Question> getQuestions();
    Page<Question> getQuestionPage(Pageable pageable);
    void delQuestion(long id);
}
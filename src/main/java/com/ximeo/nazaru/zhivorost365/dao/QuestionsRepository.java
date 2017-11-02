package com.ximeo.nazaru.zhivorost365.dao;

import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import org.springframework.data.repository.CrudRepository;

public interface QuestionsRepository extends CrudRepository<Question, Long> {


}
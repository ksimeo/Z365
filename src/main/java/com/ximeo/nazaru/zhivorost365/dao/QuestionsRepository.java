package com.ximeo.nazaru.zhivorost365.dao;

import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.math.BigInteger;

public interface QuestionsRepository extends CrudRepository<Question, Long> {
    @Query(value = "select count(*) from question where review_date is null", nativeQuery = true)
    public BigInteger countUnreaded();
}
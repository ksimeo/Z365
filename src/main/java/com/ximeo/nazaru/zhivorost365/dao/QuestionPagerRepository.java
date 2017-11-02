package com.ximeo.nazaru.zhivorost365.dao;

import com.ximeo.nazaru.zhivorost365.domain.models.Question;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface QuestionPagerRepository extends PagingAndSortingRepository<Question, Long> {
}

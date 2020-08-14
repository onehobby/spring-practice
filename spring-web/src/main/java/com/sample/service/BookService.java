package com.sample.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import com.sample.dto.BookListDto;
import com.sample.vo.Book;
import com.sample.vo.Criteria;

@Transactional
public interface BookService {

	BookListDto searchBooks(Criteria criteria);
}

package com.sample.dao;

import java.util.List;

import com.sample.vo.Book;
import com.sample.vo.Criteria;

public interface BookDao {

	int getRecordCount(Criteria criteria);
	List<Book> getBooks(Criteria criteria);
}

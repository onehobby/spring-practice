package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.dao.BookDao;
import com.sample.dto.BookListDto;
import com.sample.vo.Book;
import com.sample.vo.Criteria;
import com.sample.vo.Pagination;

@Service
public class BookServiceImpl implements BookService {

	private BookDao bookDao;
	
	@Autowired
	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}
	
	@Override
	public BookListDto searchBooks(Criteria criteria) {
		Pagination pagination = Pagination.builder()
				.pageNo(criteria.getPageNo())
				.rows(criteria.getRows())
				.build();
		
		int records = bookDao.getRecordCount(criteria);
		pagination.setRecords(records);
		
		criteria.setBeginIndex(pagination.getBeginIndex());
		criteria.setEndIndex(pagination.getEndIndex());
		
		List<Book> books = bookDao.getBooks(criteria);
		
		return BookListDto.builder()
				.pagination(pagination)
				.books(books)
				.build();
	}
	
}

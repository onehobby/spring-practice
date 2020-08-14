package com.sample.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.service.BookService;
import com.sample.vo.Criteria;

@Controller
@RequestMapping("/book")
public class BookController {

	private BookService bookService;
	
	@Autowired
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	@GetMapping
	public String list(Criteria criteria, Model model) {
		criteria.setPageNo(criteria.getPageNo() <= 0 ? 1 : criteria.getPageNo());
		criteria.setRows(criteria.getRows() == 0 ? 4 : criteria.getRows());
		
		model.addAttribute("bookListDto", bookService.searchBooks(criteria));
		return "book/list";
	}
}











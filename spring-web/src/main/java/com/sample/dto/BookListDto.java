package com.sample.dto;

import java.util.List;

import com.sample.vo.Book;
import com.sample.vo.Pagination;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BookListDto {

	private List<Book> books;
	private Pagination pagination;
	
	@Builder
	public BookListDto(List<Book> books, Pagination pagination) {
		super();
		this.books = books;
		this.pagination = pagination;
	}
	
	
}

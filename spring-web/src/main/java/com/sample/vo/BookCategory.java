package com.sample.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BookCategory {

	private int no;
	private String name;
	private BookCategory parentCategory;

	@Builder
	public BookCategory(int no, String name, BookCategory parentCategory) {
		super();
		this.no = no;
		this.name = name;
		this.parentCategory = parentCategory;
	}
}

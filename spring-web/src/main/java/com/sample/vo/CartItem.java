package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CartItem {

	private int no;
	private Book book;
	private User user;
	private Date createdDate;
	
	@Builder
	public CartItem(int no, Book book, User user, Date createdDate) {
		super();
		this.no = no;
		this.book = book;
		this.user = user;
		this.createdDate = createdDate;
	}
	
	
}

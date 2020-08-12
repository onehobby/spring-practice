package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class OrderItem {

	private int no;
	private Book book;
	private int price;
	private int amount;
	private Date createdDate;
	
	@Builder
	public OrderItem(int no, Book book, int price, int amount, Date createdDate) {
		super();
		this.no = no;
		this.book = book;
		this.price = price;
		this.amount = amount;
		this.createdDate = createdDate;
	}
	
	
}

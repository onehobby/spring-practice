package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Book {

	private int no;
	private BookCategory category;
	private String title;
	private String writer;
	private String publisher;
	private String coverFilename;
	private String summary;
	private int price;
	private int discountPrice;
	private int stock;
	private int reviewCnt;
	private double reviewScore;
	private String deleted;
	private Date createdDate;
	private Date updatedDate;
	private Date deletedDate;
	
	@Builder
	public Book(int no, BookCategory category, String title, String writer, String publisher, String coverFilename,
			String summary, int price, int discountPrice, int stock, int reviewCnt, double reviewScore, String deleted,
			Date createdDate, Date updatedDate, Date deletedDate) {
		super();
		this.no = no;
		this.category = category;
		this.title = title;
		this.writer = writer;
		this.publisher = publisher;
		this.coverFilename = coverFilename;
		this.summary = summary;
		this.price = price;
		this.discountPrice = discountPrice;
		this.stock = stock;
		this.reviewCnt = reviewCnt;
		this.reviewScore = reviewScore;
		this.deleted = deleted;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.deletedDate = deletedDate;
	}
}

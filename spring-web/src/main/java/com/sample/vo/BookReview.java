package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BookReview {

	private int no;
	private String content;
	private int score;
	private Book book;
	private User user;
	private String deleted;
	private Date createdDate;
	private Date updatedDate;
	private Date deletedDate;
	
	@Builder
	public BookReview(int no, String content, int score, Book book, User user, String deleted, Date createdDate,
			Date updatedDate, Date deletedDate) {
		super();
		this.no = no;
		this.content = content;
		this.score = score;
		this.book = book;
		this.user = user;
		this.deleted = deleted;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.deletedDate = deletedDate;
	}
	
	
}

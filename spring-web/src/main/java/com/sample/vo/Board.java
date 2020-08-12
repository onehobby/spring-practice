package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Board {

	private int no;
	private String title;
	private User user;
	private String content;
	private int likesCnt;
	private int commentCnt;
	private String deleted;
	private Date createdDate;
	private Date updatedDate;
	private Date deletedDate;
	private Board parentBoard;
	
	@Builder
	public Board(int no, String title, User user, String content, int likesCnt, int commentCnt, String deleted,
			Date createdDate, Date updatedDate, Date deletedDate, Board parentBoard) {
		super();
		this.no = no;
		this.title = title;
		this.user = user;
		this.content = content;
		this.likesCnt = likesCnt;
		this.commentCnt = commentCnt;
		this.deleted = deleted;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.deletedDate = deletedDate;
		this.parentBoard = parentBoard;
	}
	
	
}

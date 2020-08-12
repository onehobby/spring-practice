package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BoardComment {

	private int no;
	private String content;
	private Board board;
	private User user;
	private int likesCnt;
	private String deleted;
	private Date createdDate;
	private Date updatedDate;
	private Date deletedDate;
	
	@Builder
	public BoardComment(int no, String content, Board board, User user, int likesCnt, String deleted, Date createdDate,
			Date updatedDate, Date deletedDate) {
		super();
		this.no = no;
		this.content = content;
		this.board = board;
		this.user = user;
		this.likesCnt = likesCnt;
		this.deleted = deleted;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.deletedDate = deletedDate;
	}
}

package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BoardLiker {

	private Board board;
	private User user;
	private Date createdDate;
	
	@Builder
	public BoardLiker(Board board, User user, Date createdDate) {
		super();
		this.board = board;
		this.user = user;
		this.createdDate = createdDate;
	}
}

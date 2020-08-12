package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BoardCommentLiker {

	private BoardComment boardComment;
	private User user;
	private Date createdDate;
	
	@Builder
	public BoardCommentLiker(BoardComment boardComment, User user, Date createdDate) {
		super();
		this.boardComment = boardComment;
		this.user = user;
		this.createdDate = createdDate;
	}
}

package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserPointHistory {

	private int no;
	private User user;
	private PointReasonCategory reasonCategory;
	private int point;
	private Date createdDate;
	
	@Builder
	public UserPointHistory(int no, User user, PointReasonCategory reasonCategory, int point, Date createdDate) {
		super();
		this.no = no;
		this.user = user;
		this.reasonCategory = reasonCategory;
		this.point = point;
		this.createdDate = createdDate;
	}
	
	
}

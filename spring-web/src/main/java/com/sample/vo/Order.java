package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Order {

	private int no;
	private User user;
	private OrderStateCategory stateCategory;
	private Date createdDate;
	private Date updatedDate;
	private Date canceledDate;
	
	@Builder
	public Order(int no, User user, OrderStateCategory stateCategory, Date createdDate, Date updatedDate,
			Date canceledDate) {
		super();
		this.no = no;
		this.user = user;
		this.stateCategory = stateCategory;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.canceledDate = canceledDate;
	}
	
	
}

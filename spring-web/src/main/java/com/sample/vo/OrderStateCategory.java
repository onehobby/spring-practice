package com.sample.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class OrderStateCategory {

	private int no;
	private String name;
	
	@Builder
	public OrderStateCategory(int no, String name) {
		super();
		this.no = no;
		this.name = name;
	}
	
}

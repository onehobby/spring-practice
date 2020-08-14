package com.sample.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Criteria {

	private int pageNo;
	private String opt;
	private String keyword;
	private String orderby;
	private String sort;
	private int rows;
	private int beginIndex;
	private int endIndex;
	
	@Builder
	public Criteria(int pageNo, String opt, String keyword, String orderby, String sort, int rows, int beginIndex, int endIndex) {
		super();
		this.pageNo = pageNo;
		this.opt = opt;
		this.keyword = keyword;
		this.orderby = orderby;
		this.sort = sort;
		this.rows = rows;
		this.beginIndex = beginIndex;
		this.endIndex = endIndex;
	}
	
	
}

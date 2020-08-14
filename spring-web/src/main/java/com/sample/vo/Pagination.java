package com.sample.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Pagination {

	private int pageNo;
	private int rows;
	private int records;
	
	@Builder
	public Pagination(int pageNo, int rows, int records) {
		super();
		this.pageNo = pageNo;
		this.rows = rows;
		this.records = records;
	}
	
	public int getPageCount() {
		return (int) Math.ceil((double) pageNo/rows);
	}
	
	public int getBlockCount() {
		return (int) Math.ceil((double) getPageCount()/5);
	}
	
	public int getCurrentBlock() {
		return (int) Math.ceil((double) getPageCount()/5);
	}
	
	public int getBegin() {
		return (getCurrentBlock() - 1)*5 + 1;
	}
	
	public int getEnd() {
		if (getCurrentBlock() == getBlockCount()) {
			return getPageCount();
		}
		return getCurrentBlock()*5;
	}
	
	public boolean isFirst() {
		return pageNo == 1;
	}
	
	public boolean isLast() {
		return pageNo == getPageCount();
	}
	
	public int getBeginIndex() {
		return (pageNo - 1)*rows + 1;
	}
	
	public int getEndIndex() {
		return pageNo*rows;
	}
	
}

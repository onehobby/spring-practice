package com.sample.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BoardAttachedFile {

	private int boardNo;
	private String fileName;
	
	@Builder
	public BoardAttachedFile(int boardNo, String fileName) {
		super();
		this.boardNo = boardNo;
		this.fileName = fileName;
	}
}

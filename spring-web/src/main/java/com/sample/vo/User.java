package com.sample.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class User {

	private String id;
	private String name;
	private String password;
	private String email;
	private int point;
	private String disabled;
	private Date createdDate;
	private Date updatedDate;
	private Date deletedDate;
	
	@Builder
	public User(String id, String name, String password, String email, int point, String disabled, Date createdDate,
			Date updatedDate, Date deletedDate) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.point = point;
		this.disabled = disabled;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.deletedDate = deletedDate;
	}
	
	
}

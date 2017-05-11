package com.zeixin.restaurant.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "desk_info")
public class Desk extends BaseBean {
	private Integer deskNum;
	private String deskType;
	private String position;
	//0:空闲 1：预订 2:就餐	
	private Integer status;
	private Integer capacity;
	
	
	@Column(name="DESK_NUM")
	public Integer getDeskNum() {
		return deskNum;
	}

	public void setDeskNum(Integer deskNum) {
		this.deskNum = deskNum;
	}
	
	@Column(name="DESK_TYPE")
	public String getDeskType() {
		return deskType;
	}

	public void setDeskType(String deskType) {
		this.deskType = deskType;
	}

	@Column(name="TABLE_POSITION")
	public String getPosition() {
		return position;
	}	

	public void setPosition(String position) {
		this.position = position;
	}
	
	@Column(name="TABLE_STATUS")
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	@Column(name="TABLE_CAPACITY")
	public Integer getCapacity() {
		return capacity;
	}

	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}

}

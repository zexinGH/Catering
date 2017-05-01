package com.zeixin.restaurant.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "dining_table")
public class DiningTable extends BaseBean {

	private Integer tableType;
	private String position;
	//0:空闲 1：预订 2:就餐	
	private Integer status;
	private Integer capacity;
	
	@Column(name="TABLE_TYPE")
	public Integer getTableType() {
		return tableType;
	}
	
	public void setTableType(Integer tableType) {
		this.tableType = tableType;
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

package com.zeixin.restaurant.bean;


import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="order_form")
public class OrderForm extends BaseBean{
	
	private Desk desk;
	private String orderNumber;
	private Employee employee;
	private String dillDishes;
	private Double orderPayment;
	//	0:未支付  1：已支付
	private Integer status;
	private Double dillCash;
	private Double dillChange;
	private Integer dillNum;
	private Date simpleDate;
	@ManyToOne(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	@JoinColumn(name="DESK_ID")
	public Desk getDesk() {
		return desk;
	}
	public void setDesk(Desk desk) {
		this.desk = desk;
	}
	@Column(name="ORDER_NUMBER")
	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	
	@ManyToOne(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	@JoinColumn(name="EMPLOYEE_ID")
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	@Column(name="DILL_DISHES")
	public String getDillDishes() {
		return dillDishes;
	}
	public void setDillDishes(String dillDishes) {
		this.dillDishes = dillDishes;
	}
	@Column(name="ORDER_PAYMENT")	
	public void setOrderPayment(Double orderPayment) {
		this.orderPayment = orderPayment;
	}	
	public Double getOrderPayment() {
		return orderPayment;
	}
	@Column(name="ORDER_STATUS")
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	@Column(name="DILL_NUM")
	public Integer getDillNum() {
		return dillNum;
	}
	public void setDillNum(Integer dillNum) {
		this.dillNum = dillNum;
	}
	
	@Column(name="DILL_CASH")
	public Double getDillCash() {
		return dillCash;
	}
	public void setDillCash(Double dillCash) {
		this.dillCash = dillCash;
	}
	@Column(name="DILL_CHANGE")
	public Double getDillChange() {
		return dillChange;
	}
	public void setDillChange(Double dillChange) {
		this.dillChange = dillChange;
	}
	@Column(name = "SIMPLE_DATE")
	@Temporal(value = TemporalType.DATE)
	public Date getSimpleDate() {
		return simpleDate;
	}
	public void setSimpleDate(Date simpleDate) {
		this.simpleDate = simpleDate;
	}
	
	
	
	
}

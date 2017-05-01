package com.zeixin.restaurant.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="order_form")
public class OrderForm extends BaseBean{
	
	private DiningTable tableNum;
	private String orderNumber;
	private Employee employeeName;
	private Set<OrderItem> orderItems =new HashSet<OrderItem>();
	private float orderPayment;
//	0:未支付  1：已支付
	private Integer status;
	
	@ManyToOne(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	@JoinColumn(name="TABLE_NUM")
	public DiningTable getTableNum() {
		return tableNum;
	}
	public void setTableNum(DiningTable tableNum) {
		this.tableNum = tableNum;
	}
	
	@Column(name="ORDER_NUMBER")
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	
	@ManyToOne(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	@JoinColumn(name="EMPLOYEE_NAME")
	public Employee getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(Employee employeeName) {
		this.employeeName = employeeName;
	}
	
	@OneToMany(mappedBy="orderForm")
	public Set<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(Set<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	
	@Column(name="ORDER_PAYMENT")
	public float getOrderPayment() {
		return orderPayment;
	}
	public void setOrderPayment(float orderPayment) {
		this.orderPayment = orderPayment;
	}
	
	@Column(name="ORDER_STATUS")
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
	
	
}

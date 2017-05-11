package com.zeixin.restaurant.bean;

import java.util.ArrayList;
import java.util.List;

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
	
	private Desk desk;
	private String orderNumber;
	private Employee employee;
	private List<MenuDish> menuDishs = new ArrayList<MenuDish>();
	private Double orderPayment;
	//	0:未支付  1：已支付
	private Integer status;
	
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
	
	@OneToMany(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	@JoinColumn(name="MENUDISH_ID")
	public List<MenuDish> getMenuDishs() {
		return menuDishs;
	}
	public void setMenuDishs(List<MenuDish> menuDishs) {
		this.menuDishs = menuDishs;
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
	
	
	
	
}

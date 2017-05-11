package com.zeixin.restaurant.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="order_item")
public class OrderItem extends BaseBean{
	/*private MenuDish menuDish;*/
	private Integer dishAmount;
	private float totalPrice;
/*	private OrderForm orderForm;*/
	
	/*@ManyToOne(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	@JoinColumn(name="DISH_ID")
	public MenuDish getMenuDish() {
		return menuDish;
	}
	public void setMenuDish(MenuDish menuDish) {
		this.menuDish = menuDish;
	}*/
	
	@Column(name="DISH_AMOUNT")
	public Integer getDishAmount() {
		return dishAmount;
	}
	public void setDishAmount(Integer dishAmount) {
		this.dishAmount = dishAmount;
	}
	
	@Column(name="TOTAL_PRICE")
	public float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	/*@JoinColumn(name="ORDER_FORM_ID")
	@ManyToOne(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	public OrderForm getOrderForm() {
		return orderForm;
	}
	public void setOrderForm(OrderForm orderForm) {
		this.orderForm = orderForm;
	}*/
	
	
	
}

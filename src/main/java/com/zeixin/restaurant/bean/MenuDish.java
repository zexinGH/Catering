package com.zeixin.restaurant.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "menu_dish")
public class MenuDish extends BaseBean {

	private String dishName;
	private Double dishPrice;
	private String dishDescription;
	private String dishPic;
	private MenuCategory menuCategory;

	@Column(name = "DISH_DESCRIPTION")
	public String getDishDescription() {
		return dishDescription;
	}

	public void setDishDescription(String dishDescription) {
		this.dishDescription = dishDescription;
	}

	@Column(name = "DISH_NAME")
	public String getDishName() {
		return dishName;
	}

	public void setDishName(String dishName) {
		this.dishName = dishName;
	}

	@Column(name = "DISH_PRICE", columnDefinition = "decimal")
	public Double getDishPrice() {
		return dishPrice;
	}

	public void setDishPrice(Double dishPrice) {
		this.dishPrice = dishPrice;
	}

	@JoinColumn(name = "CATEGORY_ID")
	@ManyToOne(cascade = { CascadeType.PERSIST }, fetch = FetchType.EAGER)
	public MenuCategory getMenuCategory() {
		return menuCategory;
	}

	public void setMenuCategory(MenuCategory menuCategory) {
		this.menuCategory = menuCategory;
	}

	@Column(name = "DISH_PIC")
	public String getDishPic() {
		return dishPic;
	}

	public void setDishPic(String dishPic) {
		this.dishPic = dishPic;
	}
	
}

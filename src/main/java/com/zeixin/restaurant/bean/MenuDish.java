package com.zeixin.restaurant.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="menu_dish")
public class MenuDish extends BaseBean{
	
	private String dishName;
	private float dishPrice;
	private String dishDescription;
	private MenuCategory menuCategory;
	private Set<Materials> materials =new HashSet<Materials>();
	
	@Column(name="DISH_DESCRIPTION")	
	public String getDishDescription() {
		return dishDescription;
	}
	
	public void setDishDescription(String dishDescription) {
		this.dishDescription = dishDescription;
	}
	
	@Column(name="DISH_NAME")
	public String getDishName() {
		return dishName;
	}
	public void setDishName(String dishName) {
		this.dishName = dishName;
	}
	
	@Column(name="DISH_PRICE",columnDefinition="decimal")
	public float getDishPrice() {
		return dishPrice;
	}
	public void setDishPrice(float dishPrice) {
		this.dishPrice = dishPrice;
	}
	
	@JoinColumn(name="CATEGORY_ID")
	@ManyToOne(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	public MenuCategory getMenuCategory() {
		return menuCategory;
	}
	public void setMenuCategory(MenuCategory menuCategory) {
		this.menuCategory = menuCategory;
	}
	
	@ManyToMany(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	@JoinTable(name="DISHS_MATERIALS",
			joinColumns=@JoinColumn(name="DISHS_ID",referencedColumnName="id"),
			inverseJoinColumns=@JoinColumn(name="MATERIALS_ID",referencedColumnName="id"))
	public Set<Materials> getMaterials() {
		return materials;
	}
	public void setMaterials(Set<Materials> materials) {
		this.materials = materials;
	}
	
	
	
	
}

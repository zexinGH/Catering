package com.zeixin.restaurant.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="menu_category")
public class MenuCategory extends BaseBean{
	
	private String categoryName;
	private Set<MenuDish> menuDishs = new HashSet<MenuDish>();
	
	
	@Column(name="category_NAME")
	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	@OneToMany(mappedBy="menuCategory")
	public Set<MenuDish> getMenuDishs() {
		return menuDishs;
	}

	public void setMenuDishs(Set<MenuDish> menuDishs) {
		this.menuDishs = menuDishs;
	}

	
	

	
	
	
	
}

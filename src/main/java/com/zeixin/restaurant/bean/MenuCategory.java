package com.zeixin.restaurant.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="menu_category")
public class MenuCategory extends BaseBean{
	
	private String categoryName;
	private String categoryDescription;
	private Set<MenuDish> menuDishs = new HashSet<MenuDish>();
	
	@Column(name="CATEGORY_DESCRIPTION")
	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

	@Column(name="CATEGORY_NAME")
	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	@OneToMany(mappedBy="menuCategory",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public Set<MenuDish> getMenuDishs() {
		return menuDishs;
	}

	public void setMenuDishs(Set<MenuDish> menuDishs) {
		this.menuDishs = menuDishs;
	}

	
	
	
	

	
	
	
	
}

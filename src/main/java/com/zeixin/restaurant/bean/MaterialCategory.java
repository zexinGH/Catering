package com.zeixin.restaurant.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="material_category")
public class MaterialCategory extends BaseBean{
	
	private String categoryName;
	private Set<Materials> materials = new HashSet<Materials>();

	@Column(name="CATEGORY_NAME")
	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	@OneToMany(mappedBy="materialCategory")
	public Set<Materials> getMaterials() {
		return materials;
	}

	public void setMaterials(Set<Materials> materials) {
		this.materials = materials;
	} 
	
	
	
}

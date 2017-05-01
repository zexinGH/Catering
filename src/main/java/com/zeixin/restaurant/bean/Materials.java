package com.zeixin.restaurant.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="material_info")
public class Materials extends BaseBean{

	private String materialName;
	private String materialPrice;
	private String materialAccount;
	private String materialUnit;
	private MaterialCategory materialCategory;
	private Set<MenuDish> menuDishs = new HashSet<MenuDish>();
	
	@Column(name="MATERIAL_NAME")
	public String getMaterialName() {
		return materialName;
	}
	public void setMaterialName(String materialName) {
		this.materialName = materialName;
	}
	
	@Column(name="MATERIAL_PRICE")
	public String getMaterialPrice() {
		return materialPrice;
	}
	public void setMaterialPrice(String materialPrice) {
		this.materialPrice = materialPrice;
	}
	
	@Column(name="MATERIAL_ACCOUNT")
	public String getMaterialAccount() {
		return materialAccount;
	}
	public void setMaterialAccount(String materialAccount) {
		this.materialAccount = materialAccount;
	}
	
	@Column(name="MATERIAL_UNIT")
	public String getMaterialUnit() {
		return materialUnit;
	}
	public void setMaterialUnit(String materialUnit) {
		this.materialUnit = materialUnit;
	}
	
	@JoinColumn(name="CATEGORY_ID")
	@ManyToOne(cascade={CascadeType.PERSIST},fetch=FetchType.EAGER)
	public MaterialCategory getMaterialCategory() {
		return materialCategory;
	}
	public void setMaterialCategory(MaterialCategory materialCategory) {
		this.materialCategory = materialCategory;
	}
	
	@ManyToMany(mappedBy="materials")
	public Set<MenuDish> getMenuDishs() {
		return menuDishs;
	}
	public void setMenuDishs(Set<MenuDish> menuDishs) {
		this.menuDishs = menuDishs;
	}	
	
}

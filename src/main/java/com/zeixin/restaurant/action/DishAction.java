package com.zeixin.restaurant.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.bean.MenuCategory;
import com.zeixin.restaurant.bean.MenuDish;
import com.zeixin.restaurant.service.DishService;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
@Action(value="dishAction",
results={@Result(name="addCategory",location="/dish/addCategory.jsp"),
		 @Result(name="addDish",location="/dish/addDish.jsp"),
		 @Result(name="viewDish",location="/dish/viewDish.jsp"),
		 @Result(name="modifyDish",location="/dish/modifyDish.jsp"),
@Result(name="detailDish",location="/dish/detailDish.jsp")})
@Namespace("/")
public class DishAction extends BaseAction {
	@Autowired
	private DishService dishService;	
	private List<MenuCategory> categories;
	private List<MenuDish> dishs;
	private MenuDish menuDish;
	private MenuCategory menuCategory;
	private Integer categoryId;
	private Integer dishId;
	
	private String pictureFileName;
    private String pictureContentType; 
	private File picture;
	
	public String initAddCategory(){
		setTitle("添加菜品分类");
		return "addCategory";
	}
	public String addCategory(){
		setTitle("添加菜品分类");		
		if(dishService.getCategoyByName(menuCategory.getCategoryName())!=null){
			setMessage("该分类已经添加过！");
			return "addCategory";
		}
		menuCategory.setDateCreated(new Date());
		menuCategory.setDateModified(new Date());
		if(dishService.saveCategory(menuCategory)){
			setMessage("添加菜品分类成功");
			return SUCCESS;
		}else{
			setMessage("注册失败!");
			return "failure";
		}
	}
	
	public String initAddDish(){
		setTitle("添加菜品");
		categories = dishService.getAllCategory();
		return "addDish";
	}
	
	public String addDish() throws IOException{
		setTitle("添加菜品");
		categories = dishService.getAllCategory();
		if(dishService.getDishByName(menuDish.getDishName())!=null){
			setMessage("该菜品已被添加过！");
			return "addDish";
		}
		long fileSize = (picture.length()/1024)/1024;
		if(fileSize>10){
			setMessage("上传文件过大！");
			return "addDish";
		}
		File saved = new File(ServletActionContext.getServletContext()
				.getRealPath("dishUpload"), pictureFileName);

		InputStream ins = null;
		OutputStream ous = null;

		try {
			saved.getParentFile().mkdirs();

			ins = new FileInputStream(picture);
			ous = new FileOutputStream(saved);

			byte[] b = new byte[1024];
			int len = 0;

			while ((len = ins.read(b)) != -1) {
				ous.write(b, 0, len);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (ous != null)
				ous.close();
			if (ins != null)
				ins.close();
		}
		menuDish.setDateCreated(new Date());
		menuDish.setDateModified(new Date());
		menuDish.setMenuCategory(dishService.getCategoryById(categoryId));
		menuDish.setDishPic("dishUpload/"+pictureFileName);
		if(dishService.save(menuDish)){
			setMessage("添加菜品成功！");
			return "success";
		}else{
			setMessage("添加菜品失败！");
			return "failure";
		}		
	}
	
	public String initModifyDish(){
		setTitle("修改菜品信息");
		menuDish = dishService.find(MenuDish.class, dishId);
		categories = dishService.getAllCategory();
		session.put("dishId", dishId);
		return "modifyDish";
	}
	public String modifyDish(){
		setTitle("修改菜品信息");
		categories = dishService.getAllCategory();
		MenuDish modifyDish = dishService.find(MenuDish.class, 
				(Integer)session.get("dishId"));
		modifyDish.setDateModified(new Date());
		modifyDish.setMenuCategory(dishService.getCategoryById(categoryId));
		modifyDish.setDishName(menuDish.getDishName());
		modifyDish.setDishPrice(menuDish.getDishPrice());
		modifyDish.setDishDescription(menuDish.getDishDescription());
		menuDish = modifyDish;
		if(dishService.update(menuDish)){
			setMessage("修改菜品信息成功");
			return "modifyDish";
		}else{
			setMessage("修改菜品信息失败");
			return ERROR;
		}
		
		
	}
	
	public String viewDish(){
		setTitle("菜品管理");
		dishs = dishService.getAllDish();
		return "viewDish";
	}
	public String detailDish(){
		setTitle("菜单一览表");
		categories = dishService.getAllCategory();
		return "detailDish";
	}
	public String deleteDish(){
		menuDish = dishService.find(MenuDish.class, dishId);
		if(dishService.delete(menuDish)){
			return this.viewDish();
		}else{
			setMessage("删除菜品时出现错误！");
    		return "error";
		}
	}
	
	public DishService getDishService() {
		return dishService;
	}
	public void setDishService(DishService dishService) {
		this.dishService = dishService;
	}
	public MenuDish getMenuDish() {
		return menuDish;
	}
	public void setMenuDish(MenuDish menuDish) {
		this.menuDish = menuDish;
	}
	public MenuCategory getMenuCategory() {
		return menuCategory;
	}
	public void setMenuCategory(MenuCategory menuCategory) {
		this.menuCategory = menuCategory;
	}
	public List<MenuCategory> getCategories() {
		return categories;
	}
	public void setCategories(List<MenuCategory> categories) {
		this.categories = categories;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public List<MenuDish> getDishs() {
		return dishs;
	}
	public void setDishs(List<MenuDish> dishs) {
		this.dishs = dishs;
	}
	public Integer getDishId() {
		return dishId;
	}
	public void setDishId(Integer dishId) {
		this.dishId = dishId;
	}
	
	public String getPictureFileName() {
		return pictureFileName;
	}
	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}
	public String getPictureContentType() {
		return pictureContentType;
	}
	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}
	public File getPicture() {
		return picture;
	}
	public void setPicture(File picture) {
		this.picture = picture;
	}
	
	
}

package com.zeixin.restaurant.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.bean.Desk;
import com.zeixin.restaurant.service.DeskService;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
@Action(value="deskAction",
results={@Result(name="addDesk",location="/desk/addDesk.jsp"),
		 @Result(name="viewDesk",location="/desk/viewDesk.jsp"),
		@Result(name="modifyDesk",location="/desk/modifyDesk.jsp")})
@Namespace("/")
public class DeskAction extends BaseAction {
	
	@Autowired
	private DeskService deskService;
	private List<Desk> deskList;
	private Desk desk;
	private Integer deskId;
	public String initAddDesk(){
		setTitle("添加桌台");
		return "addDesk";
	}
	public String addDesk(){
		setTitle("添加桌台");
		if(deskService.getDeskByNum(desk.getDeskNum()) != null){
			setMessage("该桌台编号已存在");
			return "addDesk";
		}
		desk.setDateCreated(new Date());
		desk.setDateModified(new Date());
		desk.setStatus(0);
		if(deskService.save(desk)){
			setMessage("添加桌台成功！");
			deskList = deskService.getAllDesk();
			return "viewDesk";			
		}else{
			setMessage("添加失败!");
			return "failure";
		}
	}
	public String initModifyDesk(){
		setTitle("编辑桌台信息");
		desk = deskService.find(Desk.class, deskId);
		session.put("deskId", deskId);
		return "modifyDesk";
	}
	public String modifyDesk(){
		setTitle("编辑桌台信息");
		Desk modifyDesk = deskService.find(Desk.class, 
				(Integer) session.get("deskId"));
		if(deskService.getDeskByNum(desk.getDeskNum()) != null){
			setMessage("该桌台编号已存在");
			return "addDesk";
		}
		modifyDesk.setDeskNum(desk.getDeskNum());
		modifyDesk.setDeskType(desk.getDeskType());
		modifyDesk.setPosition(desk.getPosition());
		modifyDesk.setCapacity(desk.getCapacity());
		desk = modifyDesk;
		if(deskService.update(modifyDesk)){
			setMessage("修改桌台信息成功！");
		}else{
			setMessage("修改桌台信息失败！");
			return "failure";
		}
		return "modifyDesk";
	}
	
	public String deleteDesk(){
		desk = deskService.find(Desk.class, deskId);
		if(deskService.delete(desk)){
			setMessage(message);
			return this.viewDesk();
		}else{
			setMessage("删除桌台时出现错误！");
    		return "error";
		}
	}
	
	public String viewDesk(){
		setTitle("桌台管理");
		deskList = deskService.getAllDesk();
		return "viewDesk";
	}
	
	public DeskService getDeskService() {
		return deskService;
	}
	public void setDeskService(DeskService deskService) {
		this.deskService = deskService;
	}
	public Desk getDesk() {
		return desk;
	}
	public void setDesk(Desk desk) {
		this.desk = desk;
	}
	public List<Desk> getDeskList() {
		return deskList;
	}
	public void setDeskList(List<Desk> deskList) {
		this.deskList = deskList;
	}
	public Integer getDeskId() {
		return deskId;
	}
	public void setDeskId(Integer deskId) {
		this.deskId = deskId;
	}
	
	
}

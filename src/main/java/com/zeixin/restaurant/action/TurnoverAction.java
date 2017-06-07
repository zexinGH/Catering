package com.zeixin.restaurant.action;

import java.util.Date;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.service.DishService;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
@Action(value="turnoverAction",
results={@Result(name="dayTurnover",location="/turnover/turnover.jsp")})
@Namespace("/")
public class TurnoverAction extends BaseAction {
	@Autowired	
	private DishService dishService;
	public String initDayTurnover(){
		
		return "dayTurnover";
	}
	public String dayTurnover(){
		System.out.println(dishService.getDayTurnover(new Date()));
		return SUCCESS;
	}

	public DishService getDishService() {
		return dishService;
	}

	public void setDishService(DishService dishService) {
		this.dishService = dishService;
	}

	
}

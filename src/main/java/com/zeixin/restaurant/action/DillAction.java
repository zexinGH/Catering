package com.zeixin.restaurant.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.bean.Desk;
import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.bean.MenuCategory;
import com.zeixin.restaurant.bean.MenuDish;
import com.zeixin.restaurant.bean.OrderForm;
import com.zeixin.restaurant.service.DeskService;
import com.zeixin.restaurant.service.DishService;
import com.zeixin.restaurant.service.EmpService;
import com.zeixin.restaurant.service.OrderFormService;
import com.zeixin.restaurant.service.RoleService;
import com.zeixin.restaurant.util.CreateSerial;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
@Action(value = "dillAction", results = {
		@Result(name = "addDill", location = "/dill/addDill.jsp"),
		@Result(name = "viewDill", location = "/dill/viewDill.jsp"),
		@Result(name = "accountDill", location = "/dill/accountDill.jsp"),
		@Result(name = "viewOrder", location = "/dill/viewOrder.jsp"),
@Result(name = "viewOneOrder", location = "/dill/viewOneOrder.jsp") })
@Namespace("/")
public class DillAction extends BaseAction {
	private OrderForm orderForm;
	private MenuDish menuDish;
	private List<OrderForm> orderForms;
	private Desk desk;
	private List<Desk> desks;
	private List<Integer> dishIdList = new ArrayList<Integer>();
	private List<MenuDish> dishes;
	private String dillDishes;
	private Integer dillNum;
	private double dillCash;
	private List<MenuCategory> categories;
	private Integer deskId;
	private Integer dillId;
	@Autowired
	private EmpService empService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private DeskService deskService;
	@Autowired
	private DishService dishService;
	@Autowired
	private OrderFormService orderFormService;

	public String initAddDill() {
		desks = deskService.getAllFreeDesk();
		categories = dishService.getAllCategory();
		return "addDill";
	}

	public String addDill() {
		String dillDishs = "";
		if(deskId==null||deskId.equals("")){
			request.setAttribute("deskMessage", "请选择桌台");
			return this.initAddDill();
		}
		if(dishIdList==null||dishIdList.size()<1){
			request.setAttribute("dishMessage", "请选择菜肴");
			return this.initAddDill();
		}
		if(dillNum==null||dillNum.equals("")){
			request.setAttribute("numMessage", "请选择人数");
			return this.initAddDill();
		}
		orderForm = new OrderForm();
		desk = deskService.find(Desk.class, deskId);
		Employee loginEmployee = (Employee) session.get("employee");
		double realmoney = 0;
		for (Integer dishId : dishIdList) {
			menuDish = dishService.find(MenuDish.class, dishId);
			System.out.println(menuDish.getDishName());
			dillDishs = dillDishs + menuDish.getDishName() + "#";
			realmoney = realmoney + menuDish.getDishPrice();
		}

		orderForm.setOrderPayment(realmoney);
		orderForm.setOrderNumber(CreateSerial.createMethod(orderFormService
				.getMaxOrderNo()));
		orderForm.setStatus(0);
		orderForm.setDesk(desk);
		orderForm.setDillDishes(dillDishs);
		orderForm.setDillNum(dillNum);
		orderForm.setEmployee(loginEmployee);
		orderForm.setDateCreated(new Date());
		orderForm.setDateModified(new Date());
		desk.setStatus(1);
		if (deskService.update(desk) && orderFormService.save(orderForm)) {
			setMessage("开单成功！");
			orderForms = orderFormService.getAllUnpaid();
			return "viewDill";
		} else {
			setMessage("开单失败");
			return ERROR;
		}
	}
	public String initModifyDill(){
		orderForm = orderFormService.find(OrderForm.class, dillId);
		orderForm.getDesk().setStatus(0);
		orderFormService.save(orderForm);
		desks = deskService.getAllFreeDesk();
		categories = dishService.getAllCategory();
				
		return "addDill";
	}
	public String initAccountDill() {
		setTitle("结算订餐单");
		orderForm = orderFormService.find(OrderForm.class, dillId);
		if (orderForm != null) {
			if (orderForm.getStatus() == 1) {
				setMessage("该订单已经结算过");
				return "failure";
			}
			String dillDishs = orderForm.getDillDishes();
			if (dillDishs != null || dillDishs != "") {
				String[] dishs = dillDishs.split("#");
				dishes = new ArrayList<MenuDish>();
				for (int i = 0; i < dishs.length; i++) {
					MenuDish dishr = dishService.getDishByName(dishs[i]);
					dishes.add(dishr);
				}
			}
			session.put("dishes", dishes);
			session.put("dillId", dillId);
			return "accountDill";
		}
		setMessage("该订单不存在！");
		return "failure";
	}

	@SuppressWarnings("unchecked")
	public String accountDill() {
		orderForm = orderFormService.find(OrderForm.class,
				(Integer) session.get("dillId"));

		if (orderForm == null) {
			setMessage("不存在该订单");
			return "viewDill";
		}
		if(dillCash < orderForm.getOrderPayment()){
			setMessage("实收金额不能小于应收金额！");
			dishes = (List<MenuDish>) session.get("dishes");
			return "accountDill";
		}		
		orderForm.setStatus(1);
		orderForm.setDillCash(dillCash);
		orderForm.setSimpleDate(new Date());
		orderForm.setDillChange(orderForm.getDillCash()
				- orderForm.getOrderPayment());
		desk = orderForm.getDesk();
		desk.setStatus(0);
		if (orderFormService.update(orderForm)) {
			if (deskService.update(desk)) {
				orderForms = orderFormService.getAllUnpaid();
				setMessage("单号为：" + orderForm.getOrderNumber() + "的订单已经结账完成！");
				session.remove("dishes");
				session.remove("dillId");
				return "viewDill";
			} else {
				setMessage("结账失败！");
				return ERROR;
			}
		}
		return null;
	}

	public String viewDill() {
		setTitle("开单管理");
		orderForms = orderFormService.getAllUnpaid();

		return "viewDill";
	}

	public String viewOrder() {
		setTitle("订单查询");
		orderForms = orderFormService.getAllOrder();
		return "viewOrder";
	}
	
	public String viewOneOrder(){
		orderForm = orderFormService.find(OrderForm.class,dillId);
		setTitle("订单查询"+orderForm.getOrderNumber());
		String dillDishs = orderForm.getDillDishes();
		if (dillDishs != null || dillDishs != "") {
			String[] dishs = dillDishs.split("#");
			dishes = new ArrayList<MenuDish>();
			for (int i = 0; i < dishs.length; i++) {
				MenuDish dishr = dishService.getDishByName(dishs[i]);
				dishes.add(dishr);
			}
		}
		return "viewOneOrder";
	}

	public String deleteDill() {
		orderForm = orderFormService.find(OrderForm.class, dillId);		
		String orderNumber = orderForm.getOrderNumber();
		
		desk = orderForm.getDesk();
		desk.setStatus(0);
		if (deskService.update(desk) && orderFormService.delete(orderForm)) {
			setMessage("已经删除单号为" + orderNumber + "的开单");
			orderForms = orderFormService.getAllUnpaid();
			return "viewDill";
		} else {
			setMessage("删除开单失败！");
			return ERROR;
		}
	}

	public OrderForm getOrderForm() {
		return orderForm;
	}

	public void setOrderForm(OrderForm orderForm) {
		this.orderForm = orderForm;
	}

	public MenuDish getMenuDish() {
		return menuDish;
	}

	public void setMenuDish(MenuDish menuDish) {
		this.menuDish = menuDish;
	}

	public List<OrderForm> getOrderForms() {
		return orderForms;
	}

	public void setOrderForms(List<OrderForm> orderForms) {
		this.orderForms = orderForms;
	}

	public Desk getDesk() {
		return desk;
	}

	public void setDesk(Desk desk) {
		this.desk = desk;
	}

	public List<Desk> getDesks() {
		return desks;
	}

	public void setDesks(List<Desk> desks) {
		this.desks = desks;
	}

	public List<Integer> getDishIdList() {
		return dishIdList;
	}

	public void setDishIdList(List<Integer> dishIdList) {
		this.dishIdList = dishIdList;
	}

	public String getDillDishes() {
		return dillDishes;
	}

	public void setDillDishes(String dillDishes) {
		this.dillDishes = dillDishes;
	}

	public List<MenuCategory> getCategories() {
		return categories;
	}

	public void setCategories(List<MenuCategory> categories) {
		this.categories = categories;
	}

	public EmpService getEmpService() {
		return empService;
	}

	public void setEmpService(EmpService empService) {
		this.empService = empService;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public DeskService getDeskService() {
		return deskService;
	}

	public void setDeskService(DeskService deskService) {
		this.deskService = deskService;
	}

	public DishService getDishService() {
		return dishService;
	}

	public void setDishService(DishService dishService) {
		this.dishService = dishService;
	}

	public Integer getDeskId() {
		return deskId;
	}

	public void setDeskId(Integer deskId) {
		this.deskId = deskId;
	}

	public OrderFormService getOrderFormService() {
		return orderFormService;
	}

	public void setOrderFormService(OrderFormService orderFormService) {
		this.orderFormService = orderFormService;
	}

	public Integer getDillNum() {
		return dillNum;
	}

	public void setDillNum(Integer dillNum) {
		this.dillNum = dillNum;
	}

	public Integer getDillId() {
		return dillId;
	}

	public void setDillId(Integer dillId) {
		this.dillId = dillId;
	}

	public List<MenuDish> getDishes() {
		return dishes;
	}

	public void setDishes(List<MenuDish> dishes) {
		this.dishes = dishes;
	}

	public double getDillCash() {
		return dillCash;
	}

	public void setDillCash(double dillCash) {
		this.dillCash = dillCash;
	}

}

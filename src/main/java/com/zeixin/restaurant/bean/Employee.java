package com.zeixin.restaurant.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="employee_info")
public class Employee extends BaseBean {
	
	private String empNo;
	private String empPassword;
	private String empName;
	private String empAge;
	private String empSex;
	private String empPhone;
	private String empAddress;
	private Role empRole;
	
	@Column(name="EMP_NO")
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	@Column(name="EMP_PASSWORD")
	public String getEmpPassword() {
		return empPassword;
	}
	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}

	@Column(name="EMP_NAME")
	public String getEmpName() {
		return empName;
	}
	
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	
	@Column(name="EMP_AGE")
	public String getEmpAge() {
		return empAge;
	}
	public void setEmpAge(String empAge) {
		this.empAge = empAge;
	}

	@Column(name="EMP_SEX")
	public String getEmpSex() {
		return empSex;
	}
	public void setEmpSex(String empSex) {
		this.empSex = empSex;
	}
	
	@Column(name="EMP_PHONE")	
	public String getEmpPhone() {
		return empPhone;
	}	
	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}
	
	@Column(name="EMP_ADDRESS")
	public String getEmpAddress() {
		return empAddress;
	}
	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}


	@JoinColumn(name="ROLE_ID")
	@ManyToOne(cascade={CascadeType.PERSIST},fetch = FetchType.EAGER)
	public Role getEmpRole() {
		return empRole;
	}
	public void setEmpRole(Role empRole) {
		this.empRole = empRole;
	}

	
}

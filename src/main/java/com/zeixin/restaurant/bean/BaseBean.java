package com.zeixin.restaurant.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@MappedSuperclass
public class BaseBean{

	private Integer id;
	
	private Date dateCreated;

	private Date dateModified;

	
	@Id
	@Column(name="ID",columnDefinition="bigint")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}	
	public void setId(Integer id) {
		this.id = id;
	}
	
	@Column(name = "GMT_CREATE")
	@Temporal(value = TemporalType.TIMESTAMP)
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	
	@Column(name = "GMT_MODIFIED")
	@Temporal(value = TemporalType.TIMESTAMP)
	public Date getDateModified() {
		return dateModified;
	}
	public void setDateModified(Date dateModified) {
		this.dateModified = dateModified;
	}

}

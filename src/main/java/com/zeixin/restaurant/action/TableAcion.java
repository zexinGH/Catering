package com.zeixin.restaurant.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;

@ParentPackage("basePackage")
@Action(value="tableAction")
@Namespace("/")
public class TableAcion extends BaseAction {

}

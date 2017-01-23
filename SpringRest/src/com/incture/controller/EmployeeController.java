package com.incture.controller;

import java.util.List; 
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestBody;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;  

import com.incture.dao.EmployeeDaoImp;
import com.incture.model.Employee;



@RestController
@RequestMapping(value = "/employees")
public class EmployeeController {
	EmployeeDaoImp employeeDaoImp=new EmployeeDaoImp();
	
	@RequestMapping( method = RequestMethod.GET, headers = "Accept=application/json")  
	 public List<Employee> getemployees() {  
	  List<Employee> listOfemployees = employeeDaoImp.readAll();  
	  return listOfemployees;  
	 }  
	  
	 @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")  
	 public Employee getemployeeById(@PathVariable int id) {  
	  return employeeDaoImp.read(id);  
	 }  
	  
	 @RequestMapping( method = RequestMethod.POST, headers = "Accept=application/json")  
	 public int addemployee(@RequestBody Employee employee) {  
	  return employeeDaoImp.create(employee);  
	 }  
	  
	 @RequestMapping( method = RequestMethod.PUT, headers = "Accept=application/json")  
	 public int updateemployee(@RequestBody Employee employee) {  
	  return employeeDaoImp.update(employee);  
	  
	 }  
	  
	 @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")  
	 public void deleteemployee(@PathVariable("id") int id) {  
	  employeeDaoImp.delete(id);  
	  
	 }   

}

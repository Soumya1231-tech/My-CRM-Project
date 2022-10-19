package com.luv2code.springdemo.Services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luv2code.springdemo.dao.CustomerDao;
import com.luv2code.springdemo.entity.Customer;


@Service
public class CustomerServiceIimpl implements CustomerServices {

	
	//need customer inject DAO
	@Autowired
	private CustomerDao customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getCustomer() {
	
		return customerDAO.getCustomer();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer thecustomer) {
		customerDAO.saveCustomer(thecustomer);
		
	}

	
	@Transactional
	public Customer getCustomer(int theId) {
		
		return customerDAO.getCustomer(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		customerDAO.deleteCustomer(theId);
	}

}

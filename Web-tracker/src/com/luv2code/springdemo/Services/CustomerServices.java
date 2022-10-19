package com.luv2code.springdemo.Services;

import java.util.List;

import com.luv2code.springdemo.entity.Customer;

public interface CustomerServices {

	public List<Customer> getCustomer();

	public void saveCustomer(Customer thecustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

	//public Customer getCustomer(int theId);
}

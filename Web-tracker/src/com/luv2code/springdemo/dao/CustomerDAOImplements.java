package com.luv2code.springdemo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.Customer;

@Repository
public class CustomerDAOImplements implements CustomerDao {
	
	
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	
	public List<Customer> getCustomer() {
		
		//get the query hibernate session
		Session currentsession = sessionfactory.getCurrentSession();
		//create a query
		
		Query <Customer>thequery = currentsession.createQuery("from Customer order by lastName" ,Customer.class);
		
		
		//execute query
		
		List<Customer> customers = thequery.getResultList();
		
		return customers;
	}

	public void saveCustomer(Customer thecustomer) {
		//get current session 
		Session currentsession = sessionfactory.getCurrentSession();
		
		//save the customer
		currentsession.save(thecustomer);
		
	}

	@Override
	public Customer getCustomer(int theId) {
		//get curent session from hibernate
		Session currentsession = sessionfactory.getCurrentSession();
		
		Customer thecustomer = currentsession.get(Customer.class,theId);
		
		
		return thecustomer;
	}

	public void deleteCustomer(int theId) {
		Session currentsession = sessionfactory.getCurrentSession();
		// delete object eith primary key
				Query theQuery = currentsession.createQuery("delete from Customer where id=:customerId");
				
				theQuery.setParameter("customerId", theId);
				
				theQuery.executeUpdate();
		
	}
		
		

}

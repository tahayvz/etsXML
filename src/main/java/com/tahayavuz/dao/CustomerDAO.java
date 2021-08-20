package com.tahayavuz.dao;

import java.util.List;

import com.tahayavuz.model.Customer;

public interface CustomerDAO {

	public List<Customer> getAllUsers();

	public void delete(int userId);

	public void save(Customer aUser);
	
    public Customer getCustomer(int theId);
}


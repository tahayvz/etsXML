package com.tahayavuz.dao;

import java.util.List;

import com.tahayavuz.model.Customer;

public interface CustomerDAO {

	public List<Customer> getAllCustomers();

	public void deleteCustomer(int customerId);

	public void saveCustomer(Customer aCustomer);
	
    public Customer getCustomer(int theId);
}


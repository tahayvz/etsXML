package com.tahayavuz.service;

import java.util.List;

import com.tahayavuz.model.Customer;

public interface CustomerService {

	public List<Customer> getAllCustomers();

	public void saveCustomer(Customer aCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int customerId);
}

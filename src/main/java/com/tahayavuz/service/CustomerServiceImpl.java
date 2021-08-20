package com.tahayavuz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tahayavuz.dao.CustomerDAO;
import com.tahayavuz.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;

	public List<Customer> getAllCustomers() {
		return customerDAO.getAllCustomers();
	}

	public void saveCustomer(Customer aCustomer) {
		customerDAO.saveCustomer(aCustomer);
	}

	public void deleteCustomer(int customerId) {
		customerDAO.deleteCustomer(customerId);
	}

	public Customer getCustomer(int theId) {
		return customerDAO.getCustomer(theId);
	}

}

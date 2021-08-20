package com.tahayavuz.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.tahayavuz.model.Customer;

@Component
@Transactional
public class CustomerDAOImpl implements CustomerDAO {

	@PersistenceContext
	private EntityManager entityManager;

	public List<Customer> getAllUsers() {
		TypedQuery<Customer> query = entityManager.createQuery("SELECT c FROM Customer c ORDER BY c.id", Customer.class);
		return query.getResultList();
	}

	public void delete(int userId) {
		Customer user = entityManager.getReference(Customer.class, userId);
		entityManager.remove(user);
	}

	public void save(Customer aUser) {
		entityManager.merge(aUser);
	}
	
    public Customer getCustomer(int theId) {
		Customer user = entityManager.createQuery(
				  "SELECT c FROM Customer c WHERE c.id = :id", Customer.class).
				  setParameter("id", theId).getSingleResult();
        return user;
    }
}

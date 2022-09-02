package repository;

import model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> findByAll();

    boolean create(Customer customer);

    boolean edit(Customer customer);

    Customer findById(int customerId);

    boolean delete(int customerId);

    List<Customer> search(String nameSearch, String addressSearch, String phoneSearch);
}

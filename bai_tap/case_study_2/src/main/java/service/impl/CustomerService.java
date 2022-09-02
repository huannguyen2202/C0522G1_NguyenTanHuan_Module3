package service.impl;

import model.Customer;
import repository.ICustomerRepository;
import repository.ICustomerTypeRepository;
import repository.impl.CustomerRepository;
import repository.impl.CustomerTypeRepository;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private ICustomerRepository iCustomerRepository = new CustomerRepository();

    @Override
    public List<Customer> findByAll() {
        return iCustomerRepository.findByAll();
    }

    @Override
    public boolean create(Customer customer) {
        return iCustomerRepository.create(customer);
    }

    @Override
    public boolean edit(Customer customer) {
        return iCustomerRepository.edit(customer);
    }

    @Override
    public Customer findById(int customerId) {
        return iCustomerRepository.findById(customerId);
    }

    @Override
    public boolean delete(int customerId) {
        return iCustomerRepository.delete(customerId);
    }

    @Override
    public List<Customer> search(String nameSearch, String addressSearch, String phoneSearch) {
        return iCustomerRepository.search(nameSearch,addressSearch,phoneSearch);
    }
}

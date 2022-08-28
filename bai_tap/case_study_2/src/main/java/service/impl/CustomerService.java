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
}

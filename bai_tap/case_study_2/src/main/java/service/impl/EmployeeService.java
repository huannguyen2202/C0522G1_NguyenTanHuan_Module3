package service.impl;

import model.Customer;
import model.Employee;
import repository.ICustomerRepository;
import repository.IEmployeeRepository;
import repository.impl.CustomerRepository;
import repository.impl.EmployeeRepository;
import service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    private IEmployeeRepository iEmployeeRepository = new EmployeeRepository();

    @Override
    public List<Employee> findAll() {
        return iEmployeeRepository.findAll();
    }

    @Override
    public boolean create(Employee employee) {
        return iEmployeeRepository.create(employee);
    }

    @Override
    public Employee findById(int employeeId) {
        return iEmployeeRepository.findById(employeeId);
    }

    @Override
    public boolean edit(Employee employee) {
        return iEmployeeRepository.edit(employee);
    }

    @Override
    public boolean delete(int employeeId) {
        return iEmployeeRepository.delete(employeeId);
    }

    @Override
    public List<Employee> search(String nameSearch, String addressSearch, String phoneSearch) {
        return iEmployeeRepository.search(nameSearch,addressSearch,phoneSearch);
    }
}

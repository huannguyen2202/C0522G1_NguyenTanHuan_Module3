package service;

import model.Customer;
import model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> findAll();

    boolean create(Employee employee);
}

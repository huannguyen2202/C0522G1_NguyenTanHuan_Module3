package service;

import model.Customer;
import model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> findAll();

    boolean create(Employee employee);

    Employee findById(int employeeId);

    boolean edit(Employee employee);

    boolean delete(int employeeId);

    List<Employee> search(String nameSearch, String addressSearch, String phoneSearch);
}

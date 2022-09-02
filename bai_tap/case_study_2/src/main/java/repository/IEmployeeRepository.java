package repository;
import model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> findAll();

    boolean create(Employee employee);
}

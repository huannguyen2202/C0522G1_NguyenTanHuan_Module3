package repository.impl;
import model.Employee;
import repository.BaseRepository;
import repository.IEmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    private static final String FIND_ALL = "select * from employee where is_delete = 0;";
    private static final String INSERT = "insert into employee(employee_name, employee_birthday, " +
            "employee_id_card, employee_salary, employee_phone, employee_email, employee_address, " +
            "position_id, education_degree_id,division_id)" +
            "values(?,?,?,?,?,?,?,?,?,?);";

    @Override
    public List<Employee> findAll() {
        List<Employee> employeeList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int employeeId = resultSet.getInt("employee_id");
                String employeeName = resultSet.getString("employee_name");
                String employeeBirthday = resultSet.getString("employee_birthday");
                String employeeIdCard = resultSet.getString("employee_id_card");
                Double employeeSalary = resultSet.getDouble("employee_salary");
                String employeePhone = resultSet.getString("employee_phone");
                String employeeEmail = resultSet.getString("employee_email");
                String employeeAddress = resultSet.getString("employee_address");
                int positionId = resultSet.getInt("position_id");
                int educationDegreeId = resultSet.getInt("education_degree_id");
                int divisionId = resultSet.getInt("division_id");

                Employee employee = new Employee(employeeId, employeeName, employeeBirthday, employeeIdCard, employeeSalary, employeePhone, employeeEmail, employeeAddress, positionId, educationDegreeId, divisionId);
                employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return employeeList;
    }

    @Override
    public boolean create(Employee employee) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, employee.getEmployeeName());
            preparedStatement.setString(2, employee.getEmployeeDateOfBirth());
            preparedStatement.setString(3, employee.getEmployeeIdCard());
            preparedStatement.setDouble(4, employee.getEmployeeSalary());
            preparedStatement.setString(5, employee.getEmployeePhoneNumber());
            preparedStatement.setString(6, employee.getEmployeeEmail());
            preparedStatement.setString(7, employee.getEmployeeAddress());
            preparedStatement.setInt(8, employee.getEmployeePositionId());
            preparedStatement.setInt(9, employee.getEmployeeEducationDegreeId());
            preparedStatement.setInt(10, employee.getEmployeeDivisionId());
//            preparedStatement.setString(1, customer.getName());
//            preparedStatement.setString(2, customer.getDateOfBirth());
//            preparedStatement.setInt(3, customer.getGender());
//            preparedStatement.setString(4, customer.getIdCard());
//            preparedStatement.setString(5, customer.getPhoneNumber());
//            preparedStatement.setString(6, customer.getEmail());
//            preparedStatement.setString(7, customer.getAddress());
//            preparedStatement.setInt(8, customer.getCustomerTypeId());
            int num = preparedStatement.executeUpdate();
            return (num == 1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}

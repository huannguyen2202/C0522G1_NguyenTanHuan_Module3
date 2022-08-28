package repository.impl;

import model.Customer;
import repository.BaseRepository;
import repository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static final String FIND_ALL = "select * from customer where is_delete = 0;";
    private static final String INSERT = "insert into customer(customer_name, customer_birthday, customer_gender, " +
            "customer_id_card, customer_phone, customer_email, customer_address, customer_type_id) " +
            "values(?,?,?,?,?,?,?,?);";

    @Override
    public List<Customer> findByAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int customerId = resultSet.getInt("customer_id");
                String customerName = resultSet.getString("customer_name");
                String customerBirthday = resultSet.getString("customer_birthday");
                int customerGender = resultSet.getInt("customer_gender");
                String customerIdCard = resultSet.getString("customer_id_card");
                String customerPhone = resultSet.getString("customer_phone");
                String customerMail = resultSet.getString("customer_email");
                String customerAddress = resultSet.getString("customer_address");
                int customerTypeId = resultSet.getInt("customer_type_id");

                Customer customer = new Customer(customerId,customerTypeId,customerName,customerBirthday,customerGender,customerIdCard,customerPhone,customerMail,customerAddress);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return customerList;
    }




}

package controller;
import model.CustomerType;
import model.Employee;
import service.ICustomerService;
import service.IEmployeeService;
import service.impl.CustomerService;
import service.impl.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/employee")
public class EmployeeServlet extends HttpServlet {
    private IEmployeeService iEmployeeService = new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showCreateFrom(request, response);
                break;
            case "edit":
//                showEditForm(request, response);
                break;
            case "delete":
//                deleteCustomer(request, response);
                break;
            case "search":
//                searchCustomer(request, response);
                break;
            default:
                findAll(request, response);
        }

    }

    private void showCreateFrom(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void findAll(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/list.jsp");

        List<Employee> employeeList = iEmployeeService.findAll();

        request.setAttribute("employeeList", employeeList);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createEmployee(request, response);
                break;
            case "edit":
//                updateCustomer(request, response);
                break;
            case "delete":
//                removeCustomer(request, response);
                break;
            default:
                break;
        }

    }

    private void createEmployee(HttpServletRequest request, HttpServletResponse response) {
        String employeeName = request.getParameter("employeeName");
        String employeeDateOfBirth = request.getParameter("employeeDateOfBirth");
        String employeeIdCard = request.getParameter("employeeIdCard");
        Double employeeSalary = Double.valueOf(request.getParameter("employeeSalary"));
        String employeePhoneNumber = request.getParameter("employeePhoneNumber");
        String employeeEmail = request.getParameter("employeeEmail");
        String employeeAddress = request.getParameter("employeeAddress");
        int employeePositionId = Integer.parseInt(request.getParameter("employeePositionId"));
        int employeeEducationDegreeId = Integer.parseInt(request.getParameter("employeeEducationDegreeId"));
        int employeeDivisionId = Integer.parseInt(request.getParameter("employeeDivisionId"));
        Employee employee = new Employee(employeeName, employeeDateOfBirth, employeeIdCard, employeeSalary, employeePhoneNumber,
                employeeEmail, employeeAddress, employeePositionId, employeeEducationDegreeId,employeeDivisionId);
        boolean check = iEmployeeService.create(employee);
        String mess = "Add new Employee successfully.";
        if (!check){
            mess = "Add new Employee failed.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);

        showCreateFrom(request, response);

//        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));
//        String name = request.getParameter("name");
//        String dateOfBirth = request.getParameter("dateOfBirth");
//        int gender = Integer.parseInt(request.getParameter("gender"));
//        String idCard = request.getParameter("idCard");
//        String phoneNumber = request.getParameter("phoneNumber");
//        String email = request.getParameter("email");
//        String address = request.getParameter("address");
//        Customer customer = new Customer(customerTypeId, name, dateOfBirth, gender, idCard, phoneNumber, email, address);
//        boolean check = iEmployeeService.create(customer);
//        String mess = "Add new Customer successfully.";
//
//        if (!check) {
//            mess = "Add new Customer failed.";
//        }
//        request.setAttribute("mess", mess);
//        request.setAttribute("check", check);
//
//        showCreateFrom(request, response);
    }
}

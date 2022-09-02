package controller;

import model.Customer;
import model.CustomerType;
import service.ICustomerService;
import service.ICustomerTypeService;
import service.impl.CustomerService;
import service.impl.CustomerTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private ICustomerService iCustomerService = new CustomerService();
    private ICustomerTypeService iCustomerTypeService = new CustomerTypeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showCreateFrom(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            case "search":
                searchCustomer(request, response);
                break;
            default:
                findAll(request, response);
        }
    }

    private void searchCustomer(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");

        String name = request.getParameter("nameSearch");
        String address = request.getParameter("addressSearch");
        String phone = request.getParameter("phoneSearch");

        List<Customer> customerList = iCustomerService.search(name, address, phone);
        List<CustomerType> customerTypeList = iCustomerTypeService.findByAll();

        for (Customer customer : customerList) {
            String[] arr = customer.getDateOfBirth().split("-");
            customer.setDateOfBirth(arr[2] + "/" + arr[1] + "/" + arr[0]);
        }

        request.setAttribute("customerList", customerList);
        request.setAttribute("customerTypeList", customerTypeList);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int idDelete = Integer.parseInt(request.getParameter("id"));
        boolean check = iCustomerService.delete(idDelete);
        String mess = "Delete Customer failed.";
        if (check) {
            mess = "Delete Customer successfully.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);
        findAll(request, response);
    }


    private void findAll(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");

        List<Customer> customerList = iCustomerService.findByAll();
        List<CustomerType> customerTypeList = iCustomerTypeService.findByAll();

        request.setAttribute("customerList", customerList);
        request.setAttribute("customerTypeList", customerTypeList);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateFrom(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        List<CustomerType> customerTypeList = iCustomerTypeService.findByAll();
        Customer customer = iCustomerService.findById(id);
        RequestDispatcher dispatcher;
        if (customer == null) {
            dispatcher = request.getRequestDispatcher("view/error.jsp");
        } else {
            request.setAttribute("customer", customer);
            dispatcher = request.getRequestDispatcher("view/customer/edit.jsp");
            request.setAttribute("customerTypeList", customerTypeList);
        }
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
                createCustomer(request, response);
                break;
            case "edit":
                updateCustomer(request, response);
                break;
            case "delete":
//                removeCustomer(request, response);
                break;
            default:
                break;
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("dateOfBirth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));

        Customer customer = new Customer(id, customerTypeId, name, dateOfBirth, gender, idCard, phoneNumber, email, address);

        boolean check = iCustomerService.edit(customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/edit.jsp");
        String mess = "Update Customer successfully.";

        if (!check) {
            mess = "Update Customer failed.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {

        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("dateOfBirth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(customerTypeId, name, dateOfBirth, gender, idCard, phoneNumber, email, address);
        boolean check = iCustomerService.create(customer);
        String mess = "Add new Customer successfully.";

        if (!check) {
            mess = "Add new Customer failed.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);

        showCreateFrom(request, response);

    }
}

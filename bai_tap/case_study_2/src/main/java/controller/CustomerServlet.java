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
//                showCreateFrom(request, response);
                break;
            case "edit":
//                showEditForm(request, response);
                break;
            case "delete":
//                deleteCustomer(request, response);
                break;
            default:
                findAll(request, response);
        }
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

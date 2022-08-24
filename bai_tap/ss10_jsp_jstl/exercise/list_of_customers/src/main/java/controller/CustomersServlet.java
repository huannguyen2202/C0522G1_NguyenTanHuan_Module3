package controller;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomersServlet", value = "/customer")
public class CustomersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Customer> customer = new ArrayList<>();
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));
        customer.add(new Customer("Nguyễn Tấn Huân ", "22-02-1997", "Duy Xuyên", "https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg"));

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("display.jsp");
        request.setAttribute("customer", customer);
        requestDispatcher.forward(request, response);

    }

}

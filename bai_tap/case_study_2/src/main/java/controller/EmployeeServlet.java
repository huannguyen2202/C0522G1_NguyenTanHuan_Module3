package controller;

import model.*;
import repository.IDivisionRepository;
import service.*;
import service.impl.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/employee")
public class EmployeeServlet extends HttpServlet {
    private IEmployeeService iEmployeeService = new EmployeeService();
    private IPositionService iPositionService = new PositionService();
    private IEducationDegreeService iEducationDegreeService = new EducationDegreeService();
    private IDivisionService iDivisionService = new DivisionService();


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
                showEditForm(request, response);
                break;
            case "delete":
                deleteEmployee(request, response);
                break;
            case "search":
                searchEmployee(request, response);
                break;
            default:
                findAll(request, response);
        }

    }

    private void searchEmployee(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/list.jsp");

        String name = request.getParameter("nameSearch");
        String address = request.getParameter("addressSearch");
        String phone = request.getParameter("phoneSearch");

        List<Employee> employeeList = iEmployeeService.search(name, address, phone);
        List<Position> positionList = iPositionService.findByAll();
        List<EducationDegree> educationDegreeList = iEducationDegreeService.findByAll();
        List<Division> divisionList = iDivisionService.findByAll();

        for (Employee employee : employeeList) {
            String[] arr = employee.getEmployeeDateOfBirth().split("-");
            employee.setEmployeeDateOfBirth(arr[2] + "/" + arr[1] + "/" + arr[0]);
        }

        request.setAttribute("employeeList", employeeList);
        request.setAttribute("positionList", positionList);
        request.setAttribute("educationDegreeList", educationDegreeList);
        request.setAttribute("divisionList", divisionList);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        int idDelete = Integer.parseInt(request.getParameter("id"));
        boolean check = iEmployeeService.delete(idDelete);
        String mess = "Delete Employee failed.";
        if (check) {
            mess = "Delete Employee successfully.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);
        findAll(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        List<Position> positionList = iPositionService.findByAll();
        List<EducationDegree> educationDegreeList = iEducationDegreeService.findByAll();
        List<Division> divisionList = iDivisionService.findByAll();
        Employee employee = iEmployeeService.findById(id);
        RequestDispatcher dispatcher;
        if (employee == null) {
            dispatcher = request.getRequestDispatcher("view/error.jsp");
        } else {
            request.setAttribute("employee", employee);
            dispatcher = request.getRequestDispatcher("view/employee/edit.jsp");
            request.setAttribute("positionList", positionList);
            request.setAttribute("educationDegreeList", educationDegreeList);
            request.setAttribute("divisionList", divisionList);
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateFrom(HttpServletRequest request, HttpServletResponse response) {
        List<Position> positionList = iPositionService.findByAll();
        List<EducationDegree> educationDegreeList = iEducationDegreeService.findByAll();
        List<Division> divisionList = iDivisionService.findByAll();
        request.setAttribute("positionList", positionList);
        request.setAttribute("educationDegreeList", educationDegreeList);
        request.setAttribute("divisionList", divisionList);
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
        List<Position> positionList = iPositionService.findByAll();
        List<EducationDegree> educationDegreeList = iEducationDegreeService.findByAll();
        List<Division> divisionList = iDivisionService.findByAll();

        request.setAttribute("employeeList", employeeList);
        request.setAttribute("positionList", positionList);
        request.setAttribute("educationDegreeList", educationDegreeList);
        request.setAttribute("divisionList", divisionList);

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
        int employeeId = Integer.parseInt(request.getParameter("employeeId"));
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
        Employee employee = new Employee(employeeId, employeeName, employeeDateOfBirth, employeeIdCard, employeeSalary, employeePhoneNumber, employeeEmail, employeeAddress, employeePositionId, employeeEducationDegreeId, employeeDivisionId);
        boolean check = iEmployeeService.edit(employee);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/edit.jsp");
        String mess = "Chỉnh sửa thành công.";
        if (!check) {
            mess = "Chỉnh sửa không thành công.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
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
                employeeEmail, employeeAddress, employeePositionId, employeeEducationDegreeId, employeeDivisionId);
        boolean check = iEmployeeService.create(employee);
        String mess = "Thêm mới thành công.";
        if (!check) {
            mess = "Thêm mới không thành công.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);

        showCreateFrom(request, response);

    }
}

package controller;

import model.*;
import service.IFacilityService;
import service.IFacilityTypeService;
import service.IRentTypeService;
import service.impl.FacilityService;
import service.impl.FacilityTypeService;
import service.impl.RentTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FacilityServlet", value = "/facility")
public class FacilityServlet extends HttpServlet {
    private IFacilityService iFacilityService = new FacilityService();
    private IFacilityTypeService iFacilityTypeService = new FacilityTypeService();
    private IRentTypeService iRentTypeService = new RentTypeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteFacility(request, response);
                break;
            case "search":
                searchFacility(request, response);
                break;
            default:
                findAll(request, response);
        }

    }

    private void searchFacility(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/list.jsp");

        String name = request.getParameter("nameSearch");
        String facilityType = request.getParameter("facilityTypeSearch");

        List<Facility> facilityList = iFacilityService.search(name, facilityType);
        List<FacilityType> facilityTypeList = iFacilityTypeService.findAll();
        List<RentType> rentTypeList = iRentTypeService.findAll();

        request.setAttribute("facilityList", facilityList);
        request.setAttribute("facilityTypeList", facilityTypeList);
        request.setAttribute("rentTypeList", rentTypeList);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        List<FacilityType> facilityTypeList = iFacilityTypeService.findAll();
        List<RentType> rentTypeList = iRentTypeService.findAll();
        Facility facility = iFacilityService.findById(id);
        RequestDispatcher dispatcher;

        if (facility == null) {
            dispatcher = request.getRequestDispatcher("view/error.jsp");
        } else {
            request.setAttribute("facility", facility);
            dispatcher = request.getRequestDispatcher("view/facility/edit.jsp");
            request.setAttribute("facilityTypeList", facilityTypeList);
            request.setAttribute("rentTypeList", rentTypeList);
        }

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int idDelete = Integer.parseInt(request.getParameter("idDelete"));
        boolean check = iFacilityService.delete(idDelete);
        String mess = "Delete Facility failed.";
        if (check) {
            mess = "Delete Facility successfully.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);
        findAll(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        List<FacilityType> facilityTypeList = iFacilityTypeService.findAll();
        List<RentType> rentTypeList = iRentTypeService.findAll();
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/create.jsp");
        request.setAttribute("facilityTypeList", facilityTypeList);
        request.setAttribute("rentTypeList", rentTypeList);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void findAll(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/list.jsp");

        List<Facility> facilityList = iFacilityService.findAll();
        List<RentType> rentTypeList = iRentTypeService.findAll();
        List<FacilityType> facilityTypeList = iFacilityTypeService.findAll();

        request.setAttribute("facilityList", facilityList);
        request.setAttribute("rentTypeList", rentTypeList);
        request.setAttribute("facilityTypeList", facilityTypeList);

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
                createFacility(request, response);
                break;
            case "edit":
                updateFacility(request, response);
                break;
            case "delete":
//                removeFacility(request, response);
                break;
            default:
                break;
        }
    }

    private void updateFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("facilityId"));
        String name = request.getParameter("facilityName");
        int area = Integer.parseInt(request.getParameter("facilityArea"));
        double cost = Double.parseDouble(request.getParameter("facilityCost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        String standardRoom = request.getParameter("standardRoom");
        String description = request.getParameter("descriptionOtherConvenience");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloors"));
        String facilityFree = request.getParameter("facilityFree");
        int rentType = Integer.parseInt(request.getParameter("rentTypeId"));
        int facilityType = Integer.parseInt(request.getParameter("facilityTypeId"));

        Facility facility = new Facility(id, name, area, cost, maxPeople, standardRoom, description, poolArea,
                numberOfFloors, facilityFree, rentType, facilityType);

        boolean check = iFacilityService.edit(facility);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/edit.jsp");
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

    private void createFacility(HttpServletRequest request, HttpServletResponse response) {

        String name = request.getParameter("facilityName");
        int area = Integer.parseInt(request.getParameter("facilityArea"));
        double cost = Double.parseDouble(request.getParameter("facilityCost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        String standardRoom = request.getParameter("standardRoom");
        String description = request.getParameter("descriptionOtherConvenience");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloors"));
        String facilityFree = request.getParameter("facilityFree");
        int rentType = Integer.parseInt(request.getParameter("rentTypeId"));
        int facilityType = Integer.parseInt(request.getParameter("facilityTypeId"));

        Facility facility = new Facility(name, area, cost, maxPeople, standardRoom, description, poolArea,
                numberOfFloors, facilityFree, rentType, facilityType);

        boolean check = iFacilityService.create(facility);
        String mess = "Thêm mới thành công.";
        if (!check) {
            mess = "Thêm mới không thành công.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);

        showCreateForm(request, response);
    }
}

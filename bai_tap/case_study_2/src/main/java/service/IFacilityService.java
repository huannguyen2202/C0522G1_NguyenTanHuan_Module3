package service;

import model.Customer;
import model.Facility;

import java.util.List;

public interface IFacilityService {
    List<Facility> findAll();

    boolean create(Facility facility);

    Facility findById(int idFind);

    boolean delete(int idDelete);

    boolean edit(Facility facility);

    List<Facility> search(String nameSearch, String facilityTypeSearch);

}

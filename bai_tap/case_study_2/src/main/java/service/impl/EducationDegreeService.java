package service.impl;

import model.EducationDegree;
import repository.IEducationDegreeRepository;
import repository.IPositionRepository;
import repository.impl.EducationDegreeRepository;
import repository.impl.PositionRepository;
import service.IEducationDegreeService;

import java.util.List;

public class EducationDegreeService implements IEducationDegreeService {
    private IEducationDegreeRepository iEducationDegreeRepository= new EducationDegreeRepository();

    @Override
    public List<EducationDegree> findByAll() {
        return iEducationDegreeRepository.findByAll();
    }
}

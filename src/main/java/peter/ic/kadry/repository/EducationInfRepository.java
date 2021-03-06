package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.EducationInformation;

import java.util.List;

public interface EducationInfRepository extends CrudRepository<EducationInformation, Integer> {
    List<EducationInformation> findByStaffStaffId(int id);
}

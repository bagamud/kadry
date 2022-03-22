package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Department;
import peter.ic.kadry.entity.PublicService;
import peter.ic.kadry.entity.Staff;

import java.util.List;

public interface PublicServiceRepository extends CrudRepository<PublicService, Integer> {

    List<PublicService> findAllByStaff(Staff staff);
    List<PublicService> findAllByStaffAndDepartmentAndServiceStatusTrue(Staff staff, Department department);
}

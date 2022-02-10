package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Staff;

import java.util.List;

public interface StaffRepository extends CrudRepository<Staff, Integer> {

//    List<Staff> findAllByDepartment_code(int department_code);
}

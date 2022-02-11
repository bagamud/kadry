package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Staff;

import java.util.List;

public interface StaffRepository extends CrudRepository<Staff, Integer> {

    Staff findBySNILS(String snils);

    List<Staff> findAllByServiceInfo_Department_code(int department_code);
}

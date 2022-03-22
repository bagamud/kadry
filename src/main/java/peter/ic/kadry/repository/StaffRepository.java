package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Staff;

import java.util.List;

public interface StaffRepository extends CrudRepository<Staff, Integer> {

    Staff findByStaffId(int card_id);
    List<Staff> findAllByLastNameLikeIgnoreCaseAndFirstNameLikeIgnoreCaseAndMiddleNameLikeIgnoreCase(String lastName, String firstName, String middleName);
}

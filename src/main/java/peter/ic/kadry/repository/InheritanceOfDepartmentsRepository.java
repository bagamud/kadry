package peter.ic.kadry.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.InheritanceOfDepartments;

import java.util.ArrayList;

public interface InheritanceOfDepartmentsRepository extends CrudRepository<InheritanceOfDepartments, Integer> {
    @Query("SELECT parentCode.code FROM InheritanceOfDepartments WHERE department.code = :code")
    ArrayList<Integer> findInheritance(int code);
}

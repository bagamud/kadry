package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Department;

import java.util.ArrayList;
import java.util.List;

public interface DepartmentRepository extends CrudRepository<Department, Integer> {
    List<Department> findAllByOrderByCode();
    List<Department> findAllByAnchor_NameOrderByCode(String anchor);
    ArrayList<Department> findAllByParentCodeOrderByCode(int parentCode);

}

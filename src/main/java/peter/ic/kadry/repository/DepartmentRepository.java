package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Department;

public interface DepartmentRepository extends CrudRepository<Department, Integer> {
}

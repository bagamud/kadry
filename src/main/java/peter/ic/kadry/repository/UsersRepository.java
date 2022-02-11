package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Citizenship;
import peter.ic.kadry.entity.Department;
import peter.ic.kadry.entity.Users;

import java.util.List;

public interface UsersRepository extends CrudRepository<Users, Integer> {
    Users findByUsername(String username);
    Users findById(int id);
    List<Users> findAllByDepartment(Department department);
}

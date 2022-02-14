package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Gender;

public interface GenderRepository extends CrudRepository<Gender, Integer> {
}

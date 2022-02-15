package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Citizenship;

public interface CitizenshipRepository extends CrudRepository<Citizenship, Integer> {
}

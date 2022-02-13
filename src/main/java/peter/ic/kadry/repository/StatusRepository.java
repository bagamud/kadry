package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Anchor;
import peter.ic.kadry.entity.Status;

public interface StatusRepository extends CrudRepository<Status, Integer> {
}

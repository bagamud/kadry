package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Anchor;
import peter.ic.kadry.entity.Citizenship;

public interface AnchorRepository extends CrudRepository<Anchor, Integer> {
}

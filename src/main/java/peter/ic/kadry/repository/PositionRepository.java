package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Citizenship;
import peter.ic.kadry.entity.Position;

public interface PositionRepository extends CrudRepository<Position, Integer> {
}

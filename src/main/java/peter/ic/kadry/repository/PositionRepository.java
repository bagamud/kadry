package peter.ic.kadry.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Position;

import java.util.List;

public interface PositionRepository extends CrudRepository<Position, Integer> {

    @Query("SELECT DISTINCT parentCode FROM Position")
    List<Integer> uniqueParentCode();
}

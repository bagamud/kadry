package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Citizenship;
import peter.ic.kadry.entity.MilitaryService;

import java.util.List;

public interface MilitaryServiceRepository extends CrudRepository<MilitaryService, Integer> {
    List<MilitaryService> findByStaff_SNILS(String snils);
}

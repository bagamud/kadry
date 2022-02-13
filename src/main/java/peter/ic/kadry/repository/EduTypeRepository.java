package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.EducationType;

public interface EduTypeRepository extends CrudRepository<EducationType, Integer> {
}

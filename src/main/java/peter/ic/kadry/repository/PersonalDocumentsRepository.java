package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Citizenship;
import peter.ic.kadry.entity.PersonalDocuments;

public interface PersonalDocumentsRepository extends CrudRepository<PersonalDocuments, Integer> {
}

package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.PersonalDocuments;

import java.util.List;

public interface PersonalDocumentsRepository extends CrudRepository<PersonalDocuments, Integer> {
    List<PersonalDocuments> findAllByStaff_StaffId(int id);
}

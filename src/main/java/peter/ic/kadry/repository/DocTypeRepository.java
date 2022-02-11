package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;

import peter.ic.kadry.entity.DocumentType;

public interface DocTypeRepository extends CrudRepository<DocumentType, Integer> {
}

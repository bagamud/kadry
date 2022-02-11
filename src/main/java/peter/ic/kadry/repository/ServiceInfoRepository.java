package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Citizenship;
import peter.ic.kadry.entity.ServiceInfo;

public interface ServiceInfoRepository extends CrudRepository<ServiceInfo, Integer> {
}

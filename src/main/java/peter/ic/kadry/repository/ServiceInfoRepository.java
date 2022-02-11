package peter.ic.kadry.repository;

import org.springframework.data.repository.CrudRepository;
import peter.ic.kadry.entity.Citizenship;
import peter.ic.kadry.entity.ServiceInfo;

import java.util.List;

public interface ServiceInfoRepository extends CrudRepository<ServiceInfo, Integer> {
    List<ServiceInfo> findByStaff_SNILS(String staff_SNILS);
}

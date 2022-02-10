package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class MilitaryService {

    @Id
    private int id;

    @OneToOne
    private Staff staff;

    private boolean serveInArmy;

}

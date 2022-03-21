package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Citizenship {

    @Id
    private int citizenshipId;

    private String citizenshipTitle;

    public int getCitizenshipId() {
        return citizenshipId;
    }

    public void setCitizenshipId(int citizenshipId) {
        this.citizenshipId = citizenshipId;
    }

    public String getCitizenshipTitle() {
        return citizenshipTitle;
    }

    public void setCitizenshipTitle(String citizenshipTitle) {
        this.citizenshipTitle = citizenshipTitle;
    }
}

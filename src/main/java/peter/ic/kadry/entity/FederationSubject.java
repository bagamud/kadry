package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class FederationSubject {

    @Id
    private int code;
    private String name;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class StaffUnit {

    @Id
    private int id;

    @ManyToOne(targetEntity = Department.class)
    private Department department;

    @ManyToOne(targetEntity = Position.class)
    private Position position;

    @ManyToOne
    private SecretForm secretForm;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public SecretForm getSecretForm() {
        return secretForm;
    }

    public void setSecretForm(SecretForm secretForm) {
        this.secretForm = secretForm;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

}

package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Citizenship {

    @Id
    private int id;
    private int title;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTitle() {
        return title;
    }

    public void setTitle(int title) {
        this.title = title;
    }
}

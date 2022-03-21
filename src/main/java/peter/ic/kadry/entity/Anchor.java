package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Anchor {

    @Id
    private int anchorId;

    private String anchorName;

    public int getAnchorId() {
        return anchorId;
    }

    public void setAnchorId(int anchorId) {
        this.anchorId = anchorId;
    }

    public String getAnchorName() {
        return anchorName;
    }

    public void setAnchorName(String anchorName) {
        this.anchorName = anchorName;
    }
}

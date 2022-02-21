package peter.ic.kadry.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
public class MilitaryService {

    @Id
    private int id;

    @ManyToOne
    private Staff staff;

    private boolean serveInArmy;

//    @Column(columnDefinition = "VARCHAR")
    private String militaryUnit;

    private Date serveStart;
    private Date serveEnd;

//    @Column(columnDefinition = "VARCHAR")
    private String armyRank;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    public boolean isServeInArmy() {
        return serveInArmy;
    }

    public void setServeInArmy(boolean serveInArmy) {
        this.serveInArmy = serveInArmy;
    }

    public String getMilitaryUnit() {
        return militaryUnit;
    }

    public void setMilitaryUnit(String militaryUnit) {
        this.militaryUnit = militaryUnit;
    }

    public Date getServeStart() {
        return serveStart;
    }

    public void setServeStart(Date serveStart) {
        this.serveStart = serveStart;
    }

    public Date getServeEnd() {
        return serveEnd;
    }

    public void setServeEnd(Date serveEnd) {
        this.serveEnd = serveEnd;
    }

    public String getArmyRank() {
        return armyRank;
    }

    public void setArmyRank(String armyRank) {
        this.armyRank = armyRank;
    }
}

package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.sql.Date;

@Entity
public class SpecialRanks {

    @Id
    private int specialRanksId;

    @ManyToOne
    private Staff staff;

    @ManyToOne(targetEntity = Rank.class)
    private Rank rank;

    private String rankAssigmentOrder;

    private Date rankAssigmentDate;


    public int getSpecialRanksId() {
        return specialRanksId;
    }

    public void setSpecialRanksId(int specialRanksId) {
        this.specialRanksId = specialRanksId;
    }

    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    public Rank getRank() {
        return rank;
    }

    public void setRank(Rank rank) {
        this.rank = rank;
    }

    public String getRankAssigmentOrder() {
        return rankAssigmentOrder;
    }

    public void setRankAssigmentOrder(String rankAssigmentOrder) {
        this.rankAssigmentOrder = rankAssigmentOrder;
    }

    public Date getRankAssigmentDate() {
        return rankAssigmentDate;
    }

    public void setRankAssigmentDate(Date rankAssigmentDate) {
        this.rankAssigmentDate = rankAssigmentDate;
    }
}

package peter.ic.kadry.entity;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
public class ServiceInfo {

    @Id
    private int id;

    @OneToOne
    private Staff staff;

    @Column(unique = true, columnDefinition = "VARCHAR")
    private String username;

    @Column(columnDefinition = "VARCHAR")
    private String personalNumberLetter;

    @Column(columnDefinition = "VARCHAR")
    private String personalNumberDigits;

    @Column(columnDefinition = "VARCHAR")
    private String personalNumberOrder;

    private Date personalNumberOrderDate;

    private Date serviceStartDate;

    @ManyToOne(targetEntity = Department.class)
    private Department department;

    @ManyToOne(targetEntity = Position.class)
    private Position position;

    @Column(columnDefinition = "VARCHAR")
    private String positionAppointmentOrder;

    @OneToMany(targetEntity = StaffIDCard.class)
    private Collection<StaffIDCard> staffIDCard;

    @ManyToOne(optional = true, targetEntity = Rank.class)
    private Rank rank;

    private Date rankAssigmentDate;

    private boolean dismissed;

    private Date dismissalDate;

    @Column(columnDefinition = "VARCHAR")
    private String dismissalOrder;

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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPersonalNumberLetter() {
        return personalNumberLetter;
    }

    public void setPersonalNumberLetter(String personalNumberLetter) {
        this.personalNumberLetter = personalNumberLetter;
    }

    public String getPersonalNumberDigits() {
        return personalNumberDigits;
    }

    public void setPersonalNumberDigits(String personalNumberDigits) {
        this.personalNumberDigits = personalNumberDigits;
    }

    public String getPersonalNumberOrder() {
        return personalNumberOrder;
    }

    public void setPersonalNumberOrder(String personalNumberOrder) {
        this.personalNumberOrder = personalNumberOrder;
    }

    public Date getPersonalNumberOrderDate() {
        return personalNumberOrderDate;
    }

    public void setPersonalNumberOrderDate(Date personalNumberOrderDate) {
        this.personalNumberOrderDate = personalNumberOrderDate;
    }

    public Date getServiceStartDate() {
        return serviceStartDate;
    }

    public void setServiceStartDate(Date serviceStartDate) {
        this.serviceStartDate = serviceStartDate;
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

    public String getPositionAppointmentOrder() {
        return positionAppointmentOrder;
    }

    public void setPositionAppointmentOrder(String positionAppointmentOrder) {
        this.positionAppointmentOrder = positionAppointmentOrder;
    }

    public Collection<StaffIDCard> getStaffIDCard() {
        return staffIDCard;
    }

    public void setStaffIDCard(Collection<StaffIDCard> staffIDCard) {
        this.staffIDCard = staffIDCard;
    }

    public Rank getRank() {
        return rank;
    }

    public void setRank(Rank rank) {
        this.rank = rank;
    }

    public Date getRankAssigmentDate() {
        return rankAssigmentDate;
    }

    public void setRankAssigmentDate(Date rankAssigmentDate) {
        this.rankAssigmentDate = rankAssigmentDate;
    }
}

package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.sql.Date;

@Entity
public class PublicService {

    @Id
    private int publicServiceId;

    @ManyToOne
    private Staff staff;

    @ManyToOne(targetEntity = Department.class)
    private Department department;

    @ManyToOne(targetEntity = Position.class)
    private Position position;

    private String positionAppointmentOrder;

    private Date dismissalDate;

    private String dismissalOrder;

    private boolean serviceStatus;


    public int getPublicServiceId() {
        return publicServiceId;
    }

    public void setPublicServiceId(int publicServiceId) {
        this.publicServiceId = publicServiceId;
    }

    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
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

    public Date getDismissalDate() {
        return dismissalDate;
    }

    public void setDismissalDate(Date dismissalDate) {
        this.dismissalDate = dismissalDate;
    }

    public String getDismissalOrder() {
        return dismissalOrder;
    }

    public void setDismissalOrder(String dismissalOrder) {
        this.dismissalOrder = dismissalOrder;
    }

    public boolean isServiceStatus() {
        return serviceStatus;
    }

    public void setServiceStatus(boolean serviceStatus) {
        this.serviceStatus = serviceStatus;
    }
}

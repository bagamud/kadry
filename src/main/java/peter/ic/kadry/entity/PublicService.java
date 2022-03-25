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

    @ManyToOne
    private StaffUnit staffUnit;

    private String appointmentOrder;
    private Date appointmentOrderDate;

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

    public StaffUnit getStaffUnit() {
        return staffUnit;
    }

    public void setStaffUnit(StaffUnit staffUnit) {
        this.staffUnit = staffUnit;
    }

    public String getAppointmentOrder() {
        return appointmentOrder;
    }

    public void setAppointmentOrder(String appointmentOrder) {
        this.appointmentOrder = appointmentOrder;
    }

    public Date getAppointmentOrderDate() {
        return appointmentOrderDate;
    }

    public void setAppointmentOrderDate(Date appointmentOrderDate) {
        this.appointmentOrderDate = appointmentOrderDate;
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

package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class EducationInformation {

    @Id
    private int id;

    @ManyToOne
    private Staff staff;

    @ManyToOne
    private EducationType educationType;

    private String educationalInstitution;
    private String specialization;
    private String diploma;
    private Date educationStart;
    private Date educationEnd;

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

    public EducationType getEducationType() {
        return educationType;
    }

    public void setEducationType(EducationType educationType) {
        this.educationType = educationType;
    }

    public String getEducationalInstitution() {
        return educationalInstitution;
    }

    public void setEducationalInstitution(String educationalInstitution) {
        this.educationalInstitution = educationalInstitution;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getDiploma() {
        return diploma;
    }

    public void setDiploma(String diploma) {
        this.diploma = diploma;
    }

    public Date getEducationStart() {
        return educationStart;
    }

    public void setEducationStart(Date educationStart) {
        this.educationStart = educationStart;
    }

    public Date getEducationEnd() {
        return educationEnd;
    }

    public void setEducationEnd(Date educationEnd) {
        this.educationEnd = educationEnd;
    }
}

package peter.ic.kadry.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class EducationInformation {

    @Id
    private int educationInformationId;

    @ManyToOne
    private Staff staff;

    @ManyToOne
    private EducationType educationType;

    //    @Column(columnDefinition = "VARCHAR")
    private String educationalInstitution;

    //    @Column(columnDefinition = "VARCHAR")
    private String specialization;

    //    @Column(columnDefinition = "VARCHAR")
    private String diploma;

    public int getEducationInformationId() {
        return educationInformationId;
    }

    public void setEducationInformationId(int educationInformationId) {
        this.educationInformationId = educationInformationId;
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
}

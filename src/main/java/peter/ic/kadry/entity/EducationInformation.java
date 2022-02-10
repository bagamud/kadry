package peter.ic.kadry.entity;

import javax.persistence.*;

@Entity
public class EducationInformation {

    @Id
    private int id;

    private EducationType educationType;

    @Column(columnDefinition = "VARCHAR")
    private String educationalInstitution;

    @Column(columnDefinition = "VARCHAR")
    private String specialization;

    @Column(columnDefinition = "VARCHAR")
    private String diploma;
}

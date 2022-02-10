package peter.ic.kadry.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Staff {

    private int card_id;

    @Id
    @Column(unique = true, columnDefinition = "VARCHAR")
    private String SNILS;

    @Column(columnDefinition = "VARCHAR")
    private String lastName;

    @Column(columnDefinition = "VARCHAR")
    private String firstName;

    @Column(columnDefinition = "VARCHAR")
    private String middleName;

    private Date dateOfBirth;

    private Gender gender;

    @Column(columnDefinition = "VARCHAR")
    private String placeOfBirth;

    @ManyToOne(targetEntity = Citizenship.class)
    private Citizenship citizenship;

    @Column(columnDefinition = "VARCHAR")
    private String placeOfResidence;

    @Column(columnDefinition = "VARCHAR")
    private String placeOfRegistration;

    @Column(columnDefinition = "VARCHAR")
    private String contacts;

    @Column(columnDefinition = "VARCHAR")
    private String email;

    @OneToOne
    private PersonalDocuments personalDocuments;

    @ManyToOne
    private EducationInformation educationInformation;

    @OneToOne
    private ServiceInfo serviceInfo;

    @OneToOne
    private MilitaryService militaryService;


}

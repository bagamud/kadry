package peter.ic.kadry.entity;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
public class Staff {

    private int card_id;

    @Id
    @Column(unique = true, columnDefinition = "VARCHAR(11)")
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

//    @OneToMany(cascade=CascadeType.ALL, fetch = FetchType.EAGER)
//    private Collection<PersonalDocuments> personalDocuments;
//
//    @OneToMany(cascade=CascadeType.ALL, fetch = FetchType.EAGER)
//    private Collection<EducationInformation> educationInformation;

    @OneToOne
    private ServiceInfo serviceInfo;

    @OneToOne
    private MilitaryService militaryService;


    public int getCard_id() {
        return card_id;
    }

    public void setCard_id(int card_id) {
        this.card_id = card_id;
    }

    public String getSNILS() {
        return SNILS;
    }

    public void setSNILS(String SNILS) {
        this.SNILS = SNILS;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getPlaceOfBirth() {
        return placeOfBirth;
    }

    public void setPlaceOfBirth(String placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
    }

    public Citizenship getCitizenship() {
        return citizenship;
    }

    public void setCitizenship(Citizenship citizenship) {
        this.citizenship = citizenship;
    }

    public String getPlaceOfResidence() {
        return placeOfResidence;
    }

    public void setPlaceOfResidence(String placeOfResidence) {
        this.placeOfResidence = placeOfResidence;
    }

    public String getPlaceOfRegistration() {
        return placeOfRegistration;
    }

    public void setPlaceOfRegistration(String placeOfRegistration) {
        this.placeOfRegistration = placeOfRegistration;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

//    public Collection<PersonalDocuments> getPersonalDocuments() {
//        return personalDocuments;
//    }
//
//    public void setPersonalDocuments(Collection<PersonalDocuments> personalDocuments) {
//        this.personalDocuments = personalDocuments;
//    }
//
//    public Collection<EducationInformation> getEducationInformation() {
//        return educationInformation;
//    }
//
//    public void setEducationInformation(Collection<EducationInformation> educationInformation) {
//        this.educationInformation = educationInformation;
//    }

    public ServiceInfo getServiceInfo() {
        return serviceInfo;
    }

    public void setServiceInfo(ServiceInfo serviceInfo) {
        this.serviceInfo = serviceInfo;
    }

    public MilitaryService getMilitaryService() {
        return militaryService;
    }

    public void setMilitaryService(MilitaryService militaryService) {
        this.militaryService = militaryService;
    }
}

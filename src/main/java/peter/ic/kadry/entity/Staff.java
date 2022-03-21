package peter.ic.kadry.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.sql.Date;

@Entity
public class Staff {

    @Id
    private int staffId;

    @Column(unique = true, columnDefinition = "VARCHAR(11)")
    private String SNILS;

    private String lastName;
    private String firstName;
    private String middleName;
    private Date dateOfBirth;

    @ManyToOne
    private Gender gender;

    private String placeOfBirth;

    @ManyToOne(targetEntity = Citizenship.class)
    private Citizenship citizenship;

    private String placeOfResidence;
    private String placeOfRegistration;
    private String contacts;
    private String email;
    private String username;
    private String personalNumberLetter;
    private String personalNumberDigits;
    private String personalNumberOrder;
    private Date personalNumberOrderDate;
    private Date serviceStartDate;

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
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

}

package peter.ic.kadry.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class PersonalDocuments {

    @Id
    private int id;

    @ManyToOne
    private Staff staff;

    @ManyToOne(targetEntity = DocumentType.class)
    private DocumentType documentType;

    @Column(columnDefinition = "VARCHAR")
    private String serialCode;

    @Column(columnDefinition = "VARCHAR")
    private String number;

    @Column(columnDefinition = "VARCHAR")
    private String depCode;

    private Date issueDate;
    private Date expirationDate;

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

    public DocumentType getDocumentType() {
        return documentType;
    }

    public void setDocumentType(DocumentType documentType) {
        this.documentType = documentType;
    }

    public String getSerialCode() {
        return serialCode;
    }

    public void setSerialCode(String serialCode) {
        this.serialCode = serialCode;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getDepCode() {
        return depCode;
    }

    public void setDepCode(String depCode) {
        this.depCode = depCode;
    }

    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }
}

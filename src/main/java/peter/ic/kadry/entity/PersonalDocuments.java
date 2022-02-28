package peter.ic.kadry.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.sql.Date;

@Entity
public class PersonalDocuments {

    @Id
    private int id;

    @ManyToOne
    private Staff staff;

    @ManyToOne(targetEntity = DocumentType.class)
    private DocumentType documentType;

    //    @Column(columnDefinition = "VARCHAR")
    private String docSerialCode;

    //    @Column(columnDefinition = "VARCHAR")
    private String docNumber;

    //    @Column(columnDefinition = "VARCHAR")
    private String depCode;

    private Date issueDate;
    private Date expirationDate;

    private boolean active;

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

    public String getDocSerialCode() {
        return docSerialCode;
    }

    public void setDocSerialCode(String docSerialCode) {
        this.docSerialCode = docSerialCode;
    }

    public String getDocNumber() {
        return docNumber;
    }

    public void setDocNumber(String docNumber) {
        this.docNumber = docNumber;
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

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}

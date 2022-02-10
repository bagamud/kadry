package peter.ic.kadry.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class PersonalDocuments {

    @Id
    private int id;

    @ManyToOne(targetEntity = DocumentType.class)
    private DocumentType documentType;

    private String serialCode;
    private String number;
    private String depCode;
    private Date issDate;



}

package peter.ic.kadry.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class ServiceInfo {

    @Id
    private int id;

    @OneToOne
    private Staff staff;

    @Column(unique = true, columnDefinition = "VARCHAR")
    private String username;

    @Column(columnDefinition = "VARCHAR")
    private String personalNumberLetter;

    @Column(columnDefinition = "VARCHAR")
    private String personalNumberDigits;

    @Column(columnDefinition = "VARCHAR")
    private String personalNumberOrder;

    private Date personalNumberOrderDate;

    private Date serviceStartDate;

    @ManyToOne(targetEntity = Department.class)
    private Department department;

    @ManyToOne(targetEntity = Position.class)
    private Position position;

    @Column(columnDefinition = "VARCHAR")
    private String positionAppointmentOrder;

    @ManyToOne(targetEntity = StaffIDCard.class)
    private StaffIDCard staffIDCard;

    @ManyToOne(targetEntity = Rank.class)
    private Rank rank;

    private Date rankAssigmentDate;
//
//
//    @Column(columnDefinition = "VARCHAR")
//    private String
}

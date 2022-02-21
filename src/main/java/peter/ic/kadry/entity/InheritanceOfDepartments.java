package peter.ic.kadry.entity;

import javax.persistence.*;

@Entity
public class InheritanceOfDepartments {

    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @ManyToOne
    private Department department;

    @ManyToOne
    private Department parentCode;

    private int inheritanceLevel;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Department getParentCode() {
        return parentCode;
    }

    public void setParentCode(Department parentCode) {
        this.parentCode = parentCode;
    }

    public int getInheritanceLevel() {
        return inheritanceLevel;
    }

    public void setInheritanceLevel(int inheritanceLevel) {
        this.inheritanceLevel = inheritanceLevel;
    }
}

package pt.upskill.VHS.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Reward {

    @Id
    @GeneratedValue
    private long Id;

    private String type;

    public long getId() {
        return Id;
    }

    public void setId(long id) {
        Id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}

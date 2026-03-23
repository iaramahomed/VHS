package pt.upskill.VHS.entities;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.List;

@Entity
public class Rental {

    @Id
    @GeneratedValue
    private Long id;

    private LocalDate dateOfRent;
    private LocalDate dateOfReturn;

    @ManyToOne
    private User user;

    @OneToMany(mappedBy = "rental")
    private List<Rental_Movie> rentalMovie;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getDateOfRent() {
        return dateOfRent;
    }

    public void setDateOfRent(LocalDate dateOfRent) {
        this.dateOfRent = dateOfRent;
    }

    public LocalDate getDateOfReturn() {
        return dateOfReturn;
    }

    public void setDateOfReturn(LocalDate dateOfReturn) {
        this.dateOfReturn = dateOfReturn;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Rental_Movie> getRentalMovie() {
        return rentalMovie;
    }

    public void setRentalMovie(List<Rental_Movie> rentalMovie) {
        this.rentalMovie = rentalMovie;
    }
}

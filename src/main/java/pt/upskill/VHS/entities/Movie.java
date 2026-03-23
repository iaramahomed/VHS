package pt.upskill.VHS.entities;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Movie {

    @Id
    @GeneratedValue
    private Long id;

    private String name;
    private int year;

    @OneToMany(mappedBy = "movie")
    private List<Rental_Movie> rentalMovie;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public List<Rental_Movie> getRentalMovie() {
        return rentalMovie;
    }

    public void setRentalMovie(List<Rental_Movie> rentalMovie) {
        this.rentalMovie = rentalMovie;
    }
}

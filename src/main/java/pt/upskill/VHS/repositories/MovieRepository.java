package pt.upskill.VHS.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pt.upskill.VHS.entities.Movie;

import java.util.List;

public interface MovieRepository extends JpaRepository<Movie, Long> {
    List<Movie> findByTitleContainingIgnoreCase(String title);

}
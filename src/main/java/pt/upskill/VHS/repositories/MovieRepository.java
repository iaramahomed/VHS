package pt.upskill.VHS.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pt.upskill.VHS.entities.Movie;

import java.util.List;
import java.util.Optional;

public interface MovieRepository extends JpaRepository<Movie, Long> {

    Optional<Movie> findByName(String name);

    List<Movie> findByYearBetween(int startYear, int endYear);
    List<Movie> findByNameContainingIgnoreCase(String title);
    List<Movie> findTop10ByOrderByYearDesc();

    List<Movie> findByYearBetweenOrderByYearDesc(int startYear, int endYear);
    List<Movie> findByYearGreaterThanEqualOrderByYearDesc(int year);

    Movie findMovieById(Long id);
}
package pt.upskill.VHS.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pt.upskill.VHS.entities.Genre;

import java.util.Optional;

public interface GenreRepository extends JpaRepository<Genre, Long> {
    Optional<Genre> findByName(String name);
}

package pt.upskill.VHS.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pt.upskill.VHS.entities.Director;

import java.util.Optional;

public interface DirectorRepository extends JpaRepository<Director, Long> {
    Optional<Director> findByName(String name);
}
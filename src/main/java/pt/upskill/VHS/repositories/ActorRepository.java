package pt.upskill.VHS.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pt.upskill.VHS.entities.Actor;

import java.util.Optional;

public interface ActorRepository extends JpaRepository<Actor, Long> {
    Optional<Actor> findByName(String name);
}
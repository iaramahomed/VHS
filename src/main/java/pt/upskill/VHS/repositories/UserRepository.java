package pt.upskill.VHS.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pt.upskill.VHS.entities.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User getUserByEmail(String email);

    @Query(value = "SELECT * FROM User", nativeQuery = true)
    List<User> findByEmailContainingContaining(@Param("email") String email);
}

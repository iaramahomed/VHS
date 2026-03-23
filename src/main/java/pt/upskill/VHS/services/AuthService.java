package pt.upskill.VHS.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import pt.upskill.VHS.entities.User;
import pt.upskill.VHS.models.SignUpModel;
import pt.upskill.VHS.repositories.UserRepository;

@Service
public class AuthService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    public User register(SignUpModel signUpModel) {
        User user = new User();
        user.setEmail(signUpModel.getEmail());

        String encodedPassword = passwordEncoder.encode(signUpModel.getPassword());
        user.setPassword(encodedPassword);

        return userRepository.save(user);
    }

    public User getUser(String email) {
        return userRepository.getUserByEmail(email);
    }

    public User validateLogin(String email, String password) {
        User user = getUser(email);
        if (user == null || user.getId() == null) {
            return null;
        }

        if (!passwordEncoder.matches(password, user.getPassword())) {
            return null;
        }

        return user;
    }

    public User getAuthenticatedUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth == null || auth.getPrincipal() == null) {
            return null;
        }
        String email = auth.getPrincipal().toString();
        return getUser(email);
    }

    public void logout() {
        //todo
    }
}

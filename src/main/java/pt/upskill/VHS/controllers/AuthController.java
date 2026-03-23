package pt.upskill.VHS.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pt.upskill.VHS.entities.User;
import pt.upskill.VHS.models.SignUpModel;
import pt.upskill.VHS.repositories.UserRepository;
import pt.upskill.VHS.services.AuthService;

@Controller
@RequestMapping("/auth")
public class AuthController {
    @Autowired
    AuthService authService;

    @Autowired
    private UserRepository userRepository;

    @GetMapping(value = "/login")
    public String loginPage() {
        return "login";
    }

    @GetMapping(value = "/signup")
    public String signUpPage() {
        return "signup";
    }

    @PostMapping(value ="/signUpAction")
    public String signUpAction(SignUpModel signUpModel) {

        User user = authService.register(signUpModel);

        return "login";
    }

    @GetMapping(value = "/forgotpass")
    public String forgotPassPage() {
        return "forgotpass";
    }

    @GetMapping(value = "/resetpass")
    public String resetPassPage() {
        return "resetpass";
    }

    @GetMapping(value = "/logout")
    public String logoutPage() {
        authService.logout();
        return "logout";
    }

}

package pt.upskill.VHS.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping(value = "/")
    public String introPage() {
        return "intro";
    }



    @GetMapping("/homepage")
    public String homePage() {
        return "homepage";
    }

    @GetMapping("/contacts")
    public String contactsPage() {
        return "contactspage";
    }

    @GetMapping("/faq")
    public String faqPage() {
        return "faqpage";
    }

    @GetMapping("/shop")
    public String shopPage() {
        return "shoppage";
    }

    @GetMapping("/vhs")
    public String vhsPage() {
        return "vhs";
    }

    @GetMapping("/dvd")
    public String dvdPage() {
        return "dvd";
    }

    @GetMapping("/digital")
    public String digitalPage() {
        return "digital";
    }

    @GetMapping("/search")
    public String searchPage() {
        return "search";
    }

}
package pt.upskill.VHS.controllers;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pt.upskill.VHS.entities.Movie;
import pt.upskill.VHS.entities.User;
import pt.upskill.VHS.repositories.MovieRepository;
import pt.upskill.VHS.services.FavoriteService;

@Controller
public class FavoriteController {

    @Autowired
    private FavoriteService favoriteService;

    @Autowired
    private MovieRepository movieRepository;

    @PostMapping("/favorite/add")
    public String addFavorite(@RequestParam Long movieId,
                              @AuthenticationPrincipal User user) {

        Movie movie = movieRepository.findById(movieId).orElseThrow();
        favoriteService.addFavorite(user, movie);

        return "redirect:/movies";
    }

    @PostMapping("/favorite/remove")
    public String removeFavorite(@RequestParam Long movieId,
                                 @AuthenticationPrincipal User user) {

        Movie movie = movieRepository.findById(movieId).orElseThrow();
        favoriteService.removeFavorite(user, movie);

        return "redirect:/favorites";
    }

    @GetMapping("/favorites")
    public String getFavorites(Model model,
                               @AuthenticationPrincipal User user) {

        model.addAttribute("favorites",
                favoriteService.getUserFavorites(user));

        return "favorites";
    }
}

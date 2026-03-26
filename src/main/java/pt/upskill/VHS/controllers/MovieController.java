package pt.upskill.VHS.controllers;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import pt.upskill.VHS.entities.Movie;
import pt.upskill.VHS.repositories.MovieRepository;

import java.util.List;

@Controller
public class MovieController {

    @Autowired
    private MovieRepository movieRepo;

    @GetMapping("/homepage")
    public String showHomepage(Model model) {
        List<Movie> top10Movies = movieRepo.findTop10ByOrderByYearDesc();

        model.addAttribute("movies", top10Movies);
        model.addAttribute("sectionTitle", "Top 10 Most Recent");
        return "homepage";
    }

    @GetMapping("/movies/decade/{year}")
    public String showMoviesByDecade(@PathVariable int year, Model model) {
        int endYear = year + 9;

        List<Movie> filteredMovies = movieRepo.findByYearBetween(year, endYear);

        model.addAttribute("movies", filteredMovies);
        model.addAttribute("selectedDecade", year + "s");

        return "homepage";
    }
}

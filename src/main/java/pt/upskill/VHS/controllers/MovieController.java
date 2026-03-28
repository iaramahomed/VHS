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


    @GetMapping("/movies/details/{id}")
    public String showMovieDetails(@PathVariable Long id, Model model) {
        Movie movie = movieRepo.findMovieById(id);

        if (movie == null) {
            return "redirect:/homepage";
        }

        model.addAttribute("movie", movie);

        return "movieDetails";
    }

    @GetMapping("/vhs")
    public String showVhsMovies(Model model) {
        List<Movie> vhsMovies = movieRepo.findByYearBetweenOrderByYearDesc(1980, 1999);

        model.addAttribute("movies", vhsMovies);
        return "vhs";
    }

    @GetMapping("/dvd")
    public String showDvdMovies(Model model) {
        List<Movie> dvdMovies = movieRepo.findByYearBetweenOrderByYearDesc(2000, 2010);

        model.addAttribute("movies", dvdMovies);
        return "dvd";
    }

    @GetMapping("/digital")
    public String showDigitalMovies(Model model) {
        List<Movie> digitalMovies = movieRepo.findByYearGreaterThanEqualOrderByYearDesc(2011);

        model.addAttribute("movies", digitalMovies);
        return "digital";
    }
}


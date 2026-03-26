package pt.upskill.VHS.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import pt.upskill.VHS.entities.Actor;
import pt.upskill.VHS.entities.Director;
import pt.upskill.VHS.entities.Genre;
import pt.upskill.VHS.entities.Movie;
import pt.upskill.VHS.repositories.ActorRepository;
import pt.upskill.VHS.repositories.DirectorRepository;
import pt.upskill.VHS.repositories.GenreRepository;
import pt.upskill.VHS.repositories.MovieRepository;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

@Component
public class MovieDataLoader implements CommandLineRunner {

    @Autowired private MovieRepository movieRepo;
    @Autowired private DirectorRepository directorRepo;
    @Autowired
    private GenreRepository genreRepo;
    @Autowired private ActorRepository actorRepo;

    @Override
    public void run(String... args) throws Exception {
        if (movieRepo.count() > 0) return;

        InputStream is = getClass().getResourceAsStream("/movies.csv");
        BufferedReader reader = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8));

        reader.readLine();

        String line;
        while ((line = reader.readLine()) != null) {
            String[] d = line.split(";");

            Director dir = directorRepo.findByName(d[2])
                    .orElseGet(() -> directorRepo.save(new Director(d[2])));

            Genre gen = genreRepo.findByName(d[6])
                    .orElseGet(() -> genreRepo.save(new Genre(d[6])));

            Movie m = new Movie();
            m.setName(d[0]);
            m.setYear(Integer.parseInt(d[1]));
            m.setDirector(dir);
            m.setGenre(gen);
            m.setImagePath(d[7]);
            m.setDescription("A classic movie from the " + d[1] + "s. Starring " + d[3] + ".");

            for (int i = 3; i <= 5; i++) {
                String actorName = d[i];
                Actor actor = actorRepo.findByName(actorName)
                        .orElseGet(() -> actorRepo.save(new Actor(actorName)));
                m.getActors().add(actor);
            }

            movieRepo.save(m);
        }
        System.out.println(">>> 50 Movies imported successfully!");
    }
}
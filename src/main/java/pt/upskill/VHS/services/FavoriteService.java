package pt.upskill.VHS.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pt.upskill.VHS.entities.Favorite;
import pt.upskill.VHS.entities.Movie;
import pt.upskill.VHS.entities.User;
import pt.upskill.VHS.repositories.FavoriteRepository;

import java.util.List;

@Service
public class FavoriteService {
    @Autowired
    private FavoriteRepository favoriteRepository;

    public void addFavorite(User user, Movie movie) {
        if (favoriteRepository.findByUserAndMovie(user, movie).isEmpty()) {
            Favorite fav = new Favorite();
            fav.setUser(user);
            fav.setMovie(movie);
            favoriteRepository.save(fav);
        }
    }

    public void removeFavorite(User user, Movie movie) {
        favoriteRepository.deleteByUserAndMovie(user, movie);
    }

    public List<Movie> getUserFavorites(User user) {
        return favoriteRepository.findByUser(user)
                .stream()
                .map(Favorite::getMovie)
                .toList();
    }

    public boolean isFavorite(User user, Movie movie) {
        return favoriteRepository.findByUserAndMovie(user, movie).isPresent();
    }
}

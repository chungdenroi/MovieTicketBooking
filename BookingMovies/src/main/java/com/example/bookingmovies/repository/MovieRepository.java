package com.example.bookingmovies.repository;

import com.example.bookingmovies.entity.Movie;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MovieRepository extends JpaRepository<Movie,Long> {
    List<Movie> findAllByMovieName(String name);

    Movie findByMovieID(Long id);

    List<Movie> findMoviesByMovieNameLike(String name);

    Boolean existsByMovieID(Long movieID);
}

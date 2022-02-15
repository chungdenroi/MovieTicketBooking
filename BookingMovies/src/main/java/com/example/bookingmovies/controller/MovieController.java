package com.example.bookingmovies.controller;

import com.example.bookingmovies.entity.Movie;
import com.example.bookingmovies.repository.MovieRepository;
import com.example.bookingmovies.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MovieController {
    @Autowired
    MovieRepository movieRepository;

    @Autowired
    TicketRepository ticketRepository;

    @RequestMapping("/movie")
    public String movieList(Model model) {
        List<Movie> movieList = movieRepository.findAll();
        model.addAttribute("movieList", movieList);
        return "movie/movieList";
    }

    @RequestMapping("/movie/add")
    public String addMovie(Model model) {
        Movie movie = new Movie();
        model.addAttribute("movie", movie);
        return "movie/addMovie";
    }

    @RequestMapping("/movie/saveadd")
    public  String saveAdd(Movie movie, BindingResult result, Model model) {
        System.out.println(movie.getMovieName());
        if(result.hasErrors()) {
            return "redirect:/movie/add";
        } else {
            movieRepository.save(movie);
            return "redirect:/movie";
        }
    }

    @RequestMapping("/movie/edit/{movieID}")
    public String editMovie(@PathVariable Long movieID, Model model) {
        if(!movieRepository.existsByMovieID(movieID)) {
            return "redirect:/movie";
        } else {
            Movie movie = movieRepository.findByMovieID(movieID);
            model.addAttribute("movie", movie);
            return "movie/editMovie";
        }
    }

    @RequestMapping("/movie/saveupdate")
    public String saveUpdate(Movie movie, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "redirect:/movie/edit/"+movie.getMovieID();
        } else {
            movieRepository.save(movie);
            return "redirect:/movie";
        }
    }

    @RequestMapping("/movie/delete/{movieID}")
    public String deleteMovie(@PathVariable Long movieID) {
        if (movieRepository.existsByMovieID(movieID)) {
//            Movie movie = movieRepository.getById(movieID);
            movieRepository.deleteById(movieID);
            System.out.println("Delete movie success");
            return "redirect:/movie";
        } else {
            return "redirect:/movie";
        }
    }
}

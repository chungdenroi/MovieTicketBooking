package com.example.bookingmovies.controller;

import com.example.bookingmovies.entity.Movie;
import com.example.bookingmovies.entity.Ticket;
import com.example.bookingmovies.repository.MovieRepository;
import com.example.bookingmovies.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    MovieRepository movieRepository;

    @Autowired
    TicketRepository ticketRepository;

    @RequestMapping("/")
    public String index(Model model) {
        List<Movie> movieList = movieRepository.findAll();
        model.addAttribute("movieList",movieList);
        return "index";
    }
    @RequestMapping("/viewticket/{movieID}")
    public String listDate(@PathVariable Long movieID, HttpSession session) throws ParseException {
        if(!movieRepository.existsByMovieID(movieID)) {
            return "redirect:/";
        } else {
            getListDate(movieID,session);
            Movie movie = movieRepository.getById(movieID);
            session.setAttribute("movieID", movieID);
            session.setAttribute("movieName", movie.getMovieName());
            return "viewTicket";
        }
    }
    @RequestMapping("/viewticket/date/{date}")
    public String listTimeByDate(@PathVariable String date, Model model) {
        if(!ticketRepository.existsByDate(date)) {
            return "redirect:/";
        } else {
            List<Ticket> ticketList = ticketRepository.findTicketsByDate(date);
            HashSet<String> timeList = new HashSet<>();
            for (Ticket ticket : ticketList) {
                timeList.add(ticket.getTime());
            }
            model.addAttribute("timeList",timeList);
            return "viewTicket";
        }
    }

    @RequestMapping("/viewticket/date/{date}/{time}")
    public String listSeat(@PathVariable String date, @PathVariable String time, Model model, HttpSession session) {
        if(!ticketRepository.existsByDate(date)) {
            return "redirect:/";
        } else {
            Long movieID = (Long) session.getAttribute("movieID");
            List<Ticket> ticketList = ticketRepository.findTicketsByDateAndTimeAndMovie_MovieID(date,time, movieID);
            model.addAttribute("ticketList",ticketList);
            return "viewTicket";
        }
    }

    public void getListDate(Long movieID, HttpSession session) throws ParseException {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String cuDate = LocalDateTime.now().format(formatter);
        Date curentDate=new SimpleDateFormat("yyyy-MM-dd").parse(cuDate);

        List<Ticket> ticketList = ticketRepository.findTicketsByMovie_MovieID(movieID);
        HashSet<String> dateList = new HashSet<>();
        for (Ticket ticket : ticketList) {
            Date ticketDate = new SimpleDateFormat("yyyy-MM-dd").parse(ticket.getDate());
            if(ticketDate.compareTo(curentDate) >= 0) {
                dateList.add(ticket.getDate());
            }
        }
        session.setAttribute("dateList",dateList);
    }

}

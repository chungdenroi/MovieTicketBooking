package com.example.bookingmovies.controller;

import com.example.bookingmovies.entity.Movie;
import com.example.bookingmovies.entity.Ticket;
import com.example.bookingmovies.repository.MovieRepository;
import com.example.bookingmovies.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class TicketController {
    @Autowired
    TicketRepository ticketRepository;

    @Autowired
    MovieRepository movieRepository;

    @RequestMapping("/ticket")
    public String ticketList(Model model) {
        List<Ticket> ticketList = ticketRepository.findAll();
        model.addAttribute("ticketList",ticketList);
        return "ticket/ticketList";
    }

    @RequestMapping("/ticket/add")
    public String addTicket(Model model) {
        Ticket ticket = new Ticket();
        List<Movie> movieList = movieRepository.findAll();
        model.addAttribute("ticket", ticket);
        model.addAttribute("movieList", movieList);
        return "ticket/addTicket";
    }

    @RequestMapping("/ticket/saveadd")
    public  String saveAdd(Ticket ticket, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "redirect:/ticket/add";
        } else {
            ticketRepository.save(ticket);
            return "redirect:/ticket";
        }
    }

    @RequestMapping("/ticket/edit/{ticketID}")
    public String editMovie(@PathVariable Long ticketID, Model model) {
        if(!ticketRepository.existsByTicketID(ticketID)) {
            return "redirect:/ticket";
        } else {
            Ticket ticket = ticketRepository.findByTicketID(ticketID);
            List<Movie> movieList = movieRepository.findAll();
            model.addAttribute("ticket", ticket);
            model.addAttribute("movieList", movieList);
            return "ticket/editTicket";
        }
    }

    @RequestMapping("/ticket/saveupdate")
    public String saveUpdate(Ticket ticket, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "redirect:/ticket/edit/"+ticket.getTicketID();
        } else {
            ticketRepository.save(ticket);
            return "redirect:/ticket";
        }
    }

    @RequestMapping("/ticket/delete/{ticketID}")
    public String deleteMovie(@PathVariable Long ticketID) {
        if (ticketRepository.existsByTicketID(ticketID)) {
            Ticket ticket = ticketRepository.findByTicketID(ticketID);
            ticket.setMovie(null);
            ticketRepository.save(ticket);
            ticketRepository.deleteById(ticketID);
            System.out.println("Delete ticket success");
            return "redirect:/ticket";
        } else {
            return "redirect:/ticket";
        }
    }
    @RequestMapping("/ticket/search")
    public String searchTicketByMovieName(@RequestParam(name = "movieName", required = true) String movieName, Model model) {
        try {
            System.out.println("Movie name search : " + movieName);
            List<Ticket> ticketList = ticketRepository.findTicketsByMovie_MovieNameLike("%"+movieName+"%");
            model.addAttribute("ticketList",ticketList);
            return "ticket/ticketList";

        } catch (Exception e) {
            System.out.println("Error ticket searchs");
            return "ticket/ticketList";
        }
    }

}

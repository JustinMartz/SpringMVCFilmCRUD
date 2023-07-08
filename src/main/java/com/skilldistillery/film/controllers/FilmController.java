package com.skilldistillery.film.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	@Autowired
	private FilmDAO filmDAO;

	@RequestMapping(path = { "/", "home.do" })
	public ModelAndView goHome() {
		ModelAndView mv = new ModelAndView("WEB-INF/home.jsp");

		return mv;	

	}
	
	@RequestMapping(path = "showFilm.do", method = RequestMethod.POST)
	public ModelAndView showFilm(Integer filmId) throws SQLException {
		ModelAndView mv = new ModelAndView("WEB-INF/viewFilm.jsp");
		System.out.println("***** FilmId: " +filmId); // debug
		Film film = filmDAO.findFilmById(filmId);
		
		if (film == null) {
			mv.setViewName("WEB-INF/error.jsp");
			Film dummyFilm = new Film();
			dummyFilm.setId(filmId);
			mv.addObject(dummyFilm);
			return mv;
		}
		
		System.out.println("**** Film: " + film);  // debug
		mv.addObject("film", film);
		return mv;	
	}

	@RequestMapping(path= "createFilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm(String title, String description,@RequestParam("releaseYear") int releaseYear,@RequestParam("languageId") int languageId, @RequestParam("rentalDuration") int rentalDuration,@RequestParam("rentalRate") double rentalRate,@RequestParam("length") int length,@RequestParam("replacementCost") double replacementCost, String rating, String specialFeatures) {
		ModelAndView mv = new ModelAndView("WEB-INF/viewFilm.jsp");
		Film film = new Film();
		film.setTitle(title);
		film.setDescription(description);
		film.setReleaseYear(releaseYear);
		film.setLanguageId(languageId);
		film.setRentalDuration(rentalDuration);
		film.setRentalRate(rentalRate);
		film.setLength(length);
		film.setReplacementCost(replacementCost);
		film.setRating(rating);
		film.setSpecialFeatures(specialFeatures);
		
		// add to database
		 filmDAO.createFilm(film);
		// set film id
		
		mv.addObject(film);		
		
		return mv;
	}
}

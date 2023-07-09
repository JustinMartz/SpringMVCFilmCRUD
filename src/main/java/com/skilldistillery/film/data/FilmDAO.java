package com.skilldistillery.film.data;

import java.sql.SQLException;
import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;
import com.skilldistillery.film.entities.Language;

public interface FilmDAO {
	public Film findFilmById(int filmId) throws SQLException;

	public List<Film> findFilmByKeyword(String keyword) throws SQLException;

	public Language findLanguageByFilmId(int filmId) throws SQLException;

	public Actor findActorById(int actorId) throws SQLException;

	public List<Actor> findActorsByFilmId(int filmId);

	public List<Film> findFilmsByActorId(int actorId);
	
	public Actor createActor(Actor actor);
	
	public boolean saveActor(Actor actor);
	
	public boolean deleteActor(Actor actor);
	
	public Film createFilm(Film film);
	
	public boolean deleteFilm(Film film);
	
	public boolean editFilm(Film film);
	
	public List<Film> keywordSearch(String keyword);

}

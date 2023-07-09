package com.skilldistillery.film.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;
import com.skilldistillery.film.entities.Language;

public class FilmDaoJdbcImpl implements FilmDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";
	private static final String user = "student";
	private static final String pass = "student";

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.err.println(e);
		}
	}

	@Override
	public Film findFilmById(int filmId) throws SQLException {
		Film film = null;
		String sql = "SELECT * FROM film WHERE id = ?";
		Connection conn = DriverManager.getConnection(URL, user, pass);
		PreparedStatement prepStmt = conn.prepareStatement(sql);
		prepStmt.setInt(1, filmId);
		ResultSet filmResult = prepStmt.executeQuery();

		if (filmResult.next()) {
			film = new Film();

			film.setId(filmResult.getInt("id"));
			film.setTitle(filmResult.getString("title"));
			film.setDescription(filmResult.getString("description"));
			film.setReleaseYear(filmResult.getShort("release_year"));
			film.setLanguageId(filmResult.getInt("language_id"));
			film.setRentalDuration(filmResult.getInt("rental_duration"));
			film.setRentalRate(filmResult.getDouble("rental_rate"));
			film.setLength(filmResult.getInt("length"));
			film.setReplacementCost(filmResult.getDouble("replacement_cost"));
			film.setRating(filmResult.getString("rating"));
			film.setSpecialFeatures(filmResult.getString("special_features"));
			film.setLanguageName(findLanguageByFilmId(filmResult.getInt("id")));
			film.setCast(findActorsByFilmId(filmId));
		}

		filmResult.close();
		prepStmt.close();
		conn.close();
		return film;
	}

	@Override
	public List<Film> findFilmByKeyword(String keyword) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Language findLanguageByFilmId(int filmId) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Actor findActorById(int actorId) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Actor> findActorsByFilmId(int filmId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Film> findFilmsByActorId(int actorId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Actor createActor(Actor actor) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean saveActor(Actor actor) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteActor(Actor actor) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Film createFilm(Film film) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			String sql = "INSERT INTO film (film.title, film.description, film.release_year, "
					+ "film.language_id, film.rental_duration, film.rental_rate, film.length, film.replacement_cost, "
					+ "film.rating, film.special_features" + ") " + " VALUES (?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getReleaseYear());
			stmt.setInt(4, film.getLanguageId());
			stmt.setInt(5, film.getRentalDuration());
			stmt.setDouble(6, film.getRentalRate());
			stmt.setInt(7, film.getLength());
			stmt.setDouble(8, film.getReplacementCost());
			stmt.setString(9, film.getRating());
			stmt.setString(10, film.getSpecialFeatures());

			int updateCount = stmt.executeUpdate();

			if (updateCount == 1) {
				ResultSet keys = stmt.getGeneratedKeys();
				if (keys.next()) {
					int newFilmId = keys.getInt(1);
					film.setId(newFilmId);
				}
			} else {
				film = null;
			}

			conn.commit(); // COMMIT TRANSACTION
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			throw new RuntimeException("Error inserting film " + film);
		}

		return film;
	}

	public boolean deleteFilm(Film film) {
		Connection conn = null;

		if (film.getId() <= 1000) {
			return false;
		}

		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			String sql = "DELETE FROM film WHERE id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, film.getId());
			int updateCount = stmt.executeUpdate();
			if (updateCount == 1) {
				conn.commit(); // COMMIT TRANSACTION
				// would this do anything?
				// film = null;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			return false;
		}
		return true;
	}

	public boolean editFilm(Film film) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			String sql = "UPDATE film SET film.title=?, film.description=?, film.release_year=?, film.language_id=?, "
					+ "film.rental_duration=?, film.rental_rate=?, film.length=?, film.replacement_cost=?, film.rating=?, "
					+ "film.special_features=? WHERE film.id=?";

			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getReleaseYear());
			stmt.setInt(4, film.getLanguageId());
			stmt.setInt(5, film.getRentalDuration());
			stmt.setDouble(6, film.getRentalRate());
			stmt.setInt(7, film.getLength());
			stmt.setDouble(8, film.getReplacementCost());
			stmt.setString(9, film.getRating());
			stmt.setString(10, film.getSpecialFeatures());
			stmt.setInt(11, film.getId());

			System.out.println("****************** " + stmt);

			int updateCount = stmt.executeUpdate();
			if (updateCount == 1) {
				conn.commit();
			} else {
				return false;
			}

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} // ROLLBACK TRANSACTION ON ERROR
				catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			return false;
		}
		return true;

	}

	public List<Film> keywordSearch(String keyword) {
		Film filmMatch = null;
		List<Film> filmsMatchingKeyword = new ArrayList<>();

		String query = "SELECT * FROM film WHERE film.title LIKE ? OR film.description LIKE ?";
		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			PreparedStatement prepStmt = conn.prepareStatement(query);
			prepStmt.setString(1, "%" + keyword + "%");
			prepStmt.setString(2, "%" + keyword + "%");
			ResultSet searchResult = prepStmt.executeQuery();

			if (searchResult.next() == false) {
				System.out.println("\n*** Could not find \"" + keyword + "\" in any movie title or description ***\n");
				return null;
			} else {
				do {
					filmMatch = new Film();

					filmMatch.setId(searchResult.getInt("id"));
					filmMatch.setTitle(searchResult.getString("title"));
					filmMatch.setDescription(searchResult.getString("description"));
					filmMatch.setReleaseYear(searchResult.getShort("release_year"));
					filmMatch.setLanguageId(searchResult.getInt("language_id"));
					filmMatch.setRentalDuration(searchResult.getInt("rental_duration"));
					filmMatch.setRentalRate(searchResult.getDouble("rental_rate"));
					filmMatch.setLength(searchResult.getInt("length"));
					filmMatch.setReplacementCost(searchResult.getDouble("replacement_cost"));
					filmMatch.setRating(searchResult.getString("rating"));
					filmMatch.setSpecialFeatures(searchResult.getString("special_features"));
//					filmMatch.setLanguageName(findLanguageByFilmId(searchResult.getInt("id")));
//					filmMatch.setCast(findActorsByFilmId(filmMatch.getId()));

					filmsMatchingKeyword.add(filmMatch);
				} while (searchResult.next());

			}
			searchResult.close();
			prepStmt.close();
			conn.close();
			return filmsMatchingKeyword;
		} catch (SQLException e) {
			System.err.println(e);
		} finally {
			
		}

		return null;
	}

}

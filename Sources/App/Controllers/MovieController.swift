//
//  MovieController.swift
//  
//
//  Created by Giorgio Giannotta on 15/04/23.
//

import Vapor

final class MovieController {
    var movies: [Movie]

        init() {
            // Initialize your array of WordOfTheDay objects here
            self.movies = [
                Movie(title: "The Matrix", year: 1999, category: "Science Fiction", trailerUrl: "https://www.youtube.com/watch?v=m8e-FF8MsqU", imageCoverUrl: "https://www.example.com/movies/the-matrix.jpg"),
                    Movie(title: "The Godfather", year: 1972, category: "Crime", trailerUrl: "https://www.youtube.com/watch?v=sY1S34973zA", imageCoverUrl: "https://www.example.com/movies/the-godfather.jpg"),
                    Movie(title: "Inception", year: 2010, category: "Science Fiction", trailerUrl: "https://www.youtube.com/watch?v=YoHD9XEInc0", imageCoverUrl: "https://www.example.com/movies/inception.jpg"),
                    Movie(title: "The Shawshank Redemption", year: 1994, category: "Drama", trailerUrl: "https://www.youtube.com/watch?v=6hB3S9bIaco", imageCoverUrl: "https://www.example.com/movies/the-shawshank-redemption.jpg"),
                    Movie(title: "Pulp Fiction", year: 1994, category: "Crime", trailerUrl: "https://www.youtube.com/watch?v=s7EdQ4FqbhY", imageCoverUrl: "https://www.example.com/movies/pulp-fiction.jpg"),
                    Movie(title: "The Dark Knight", year: 2008, category: "Action", trailerUrl: "https://www.youtube.com/watch?v=EXeTwQWrcwY", imageCoverUrl: "https://www.example.com/movies/the-dark-knight.jpg"),
                    Movie(title: "Jurassic Park", year: 1993, category: "Science Fiction", trailerUrl: "https://www.youtube.com/watch?v=lc0UehYemQA", imageCoverUrl: "https://www.example.com/movies/jurassic-park.jpg"),
                    Movie(title: "The Silence of the Lambs", year: 1991, category: "Thriller", trailerUrl: "https://www.youtube.com/watch?v=W6Mm8Sbe__o", imageCoverUrl: "https://www.example.com/movies/the-silence-of-the-lambs.jpg"),
                    Movie(title: "Forrest Gump", year: 1994, category: "Drama", trailerUrl: "https://www.youtube.com/watch?v=uPIEn0M8su0", imageCoverUrl: "https://www.example.com/movies/forrest-gump.jpg"),
                    Movie(title: "The Terminator", year: 1984, category: "Science Fiction", trailerUrl: "https://www.youtube.com/watch?v=frHnTvYjfcM", imageCoverUrl: "https://www.example.com/movies/the-terminator.jpg")
            ]
        }

    func getMovies(_ req: Request) throws -> [Movie] {
        for (index, var movie) in movies.enumerated() {
                    movie.id = index + 1
                    movies[index] = movie
                }
            return movies
        }
}

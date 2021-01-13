//
//  MovieViewModel.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/13/21.
//

import Foundation

struct MovieViewModel {
    
    let title: String
    let name: String
    let overview: String
    let posterPath: String
    let backdropPath: String
    let voteAverage: Double
    
    // Injeção de dependencia
    init(filme: Filme) {
        self.title = filme.title ?? filme.name!
        self.name = filme.name ?? filme.title!
        self.overview = filme.overview
        self.posterPath = filme.posterPath
        self.backdropPath = filme.backdropPath
        self.voteAverage = filme.voteAverage
    }
    
}

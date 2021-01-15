//
//  MovieViewModel.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/13/21.
//

import Foundation
import UIKit

class MovieViewModel {
    private var movies: [Filme] = []
    private var contador: Int = 0
    private let client: MoviesAPIProtocol
    var movieViewData: Bindable<MovieViewData?> = Bindable(nil)
    
    
    init(client: MoviesAPIProtocol = MoviesAPI()) {
        self.client = client
    }
    func loadMovie() {
        client.downloadJSON { (filme) in
            self.movies = filme
            self.movieViewData.value = MovieViewData(model: filme)
        }
}
    func retornaCount() -> Int {
        self.contador = movies.count
        return contador
    }
    func retornaItem() -> [Filme] {
        let movie = self.movies
        return movie
    }
}

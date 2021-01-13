//
//  MovieViewModel.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/13/21.
//

import Foundation
import UIKit

class MovieViewModel {
    var movies: [Filme] = []
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
}

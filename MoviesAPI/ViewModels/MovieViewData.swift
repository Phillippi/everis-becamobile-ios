//
//  MovieViewData.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/13/21.
//

import Foundation

protocol MovieViewDataType {
    var movies: [Filme] { get }
}
class MovieViewData {
    
    private let model: [Filme]
    
    init(model:[Filme]) {
        self.model = model
    }
}
extension MovieViewData: MovieViewDataType {
    var movies: [Filme] {
        return model
    }
}

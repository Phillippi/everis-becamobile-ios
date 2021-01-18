//
//  DetalhesFilmesViewData.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/16/21.
//

import Foundation

protocol DetalhesFilmesViewDataType {
    var movies: Filme { get }
}
class DetalheViewData {
    
    private let model: Filme
    
    init(model:Filme) {
        self.model = model
    }
}
extension DetalheViewData: DetalhesFilmesViewDataType {
    var movies: Filme {
        return model
    }
}

//
//  DetalhesFilmesViewModel.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/15/21.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

class DetalhesFilmesViewModel {
    
    // MARK: Variáveis
    private var movies: [Filme] = []
    private var filmeSelecionado:Filme? = nil
    private var imageDetalheFilme: UIImage?
    var detalhesFilmesViewData: Bindable <DetalheViewData?> = Bindable(nil)
    private let client: MoviesAPIProtocol

    
    init(client: MoviesAPIProtocol = MoviesAPI()) {
        self.client = client
    }
    // MARK: Métodos
//    func loadMovie() {
//        client.downloadJSON { (filme) in
//            self.filmeSelecionado = filme
//            self.detalhesFilmesViewData = DetalheViewData(model: filme)
//        }
//    }
//    func fetchImage() {
//        let urlString = "http://image.tmdb.org/t/p/w185/\(filmeSelecionado?.backdropPath)"
//        guard let url = URL(string: urlString) else { return }
//        let getDataTask = URLSession.shared.dataTask(with: url) { data, _, error in
//            guard let data = data, error == nil else { return }
//        
//        DispatchQueue.main.async {
//            guard let image = UIImage(data: data) else {return}
//            self.imageDetalheFilme = image
//        }
//    }
//        getDataTask.resume()
//    }
//    func getImage() -> UIImage{
//        let imagem = self.imageDetalheFilme
//        return imagem!
//    }
    
}



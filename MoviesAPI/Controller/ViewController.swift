//
//  ViewController.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/7/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var movies: [Filme] = []
    let clienteAPI = ListaFilmesAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadHome()
    }
    func loadHome() {
        clienteAPI.listaTodosFilmes { (filmes) in
            if let _filmes = filmes {
                self.movies = _filmes
                self.printMovies()
            } else {
                print("Erro ao carregar os filmes")
            }
        }
    }
    func printMovies() {
        for movie in movies {
            let name: String
            if let title = movie.title {
                name = title
            } else if let movieName = movie.name {
                name = movieName
            } else {
                name = "Sem titulo"
            }
        
            print(name)
        }
    }
  
}

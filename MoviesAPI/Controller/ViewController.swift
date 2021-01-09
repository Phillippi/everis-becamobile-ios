//
//  ViewController.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/7/21.
//

import UIKit
import Alamofire


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate, UICollectionViewDelegate {
    @IBOutlet weak var colecaoCapasFilmes: UICollectionView!
    
    // MARK: - Variáveis
    
    var movies: [Filme] = []
    let clienteAPI = ListaFilmesAPI()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadHome()
        colecaoCapasFilmes.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaCapa = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaCapa", for: indexPath) as! CapasFilmesCollectionViewCell
        celulaCapa.backgroundColor = UIColor.blue
        return celulaCapa
    }
    
    func loadHome() {
//        clienteAPI.listaTodosFilmes { (filmes) in
//            if let _filmes = filmes {
//                self.movies = _filmes
//                self.printMovies()
//            } else {
//                print("Erro ao carregar os filmes")
//            }
//        }
        clienteAPI.listaTodosFilmes { (capas) in
            if let _capas = capas {
                self.movies = _capas
                self.printCapas()
            }
        }
    }
//    func printMovies() {
//        for movie in movies {
//            let name: String
//            if let title = movie.title {
//                name = title
//            } else if let movieName = movie.name {
//                name = movieName
//            } else {
//                name = "Sem titulo"
//            }
//
//            print(name)
//        }
//    }
    func printCapas() {
        for movie in movies {
            let capas: String
            let posterPath = movie.posterPath
                capas = "http://image.tmdb.org/t/p/w185/\(posterPath)"
                print(capas)
        }
    }
}

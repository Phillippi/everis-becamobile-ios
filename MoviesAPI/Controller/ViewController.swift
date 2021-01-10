//
//  ViewController.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/7/21.
//

import UIKit
import Alamofire
import AlamofireImage


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var colecaoCapasFilmes: UICollectionView!
        
    // MARK: - Variáveis
    
    let key = "fecd1e2331c61e4e88e8cedaa0d1734f"
    var movies: [Filme] = []
    
    // MARK: - Método ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //loadHome()
        colecaoCapasFilmes.dataSource = self
        colecaoCapasFilmes.delegate = self
        downloadJSON {
            self.colecaoCapasFilmes.reloadData()
        }
    }
    
    // MARK: - Métodos CollectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaCapa = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaCapa", for: indexPath) as! CapasFilmesCollectionViewCell
        let filmeAtual = movies[indexPath.item]
            celulaCapa.configuraHome(listaFilme: filmeAtual)
            celulaCapa.layer.borderWidth = 0.5
            celulaCapa.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
            celulaCapa.layer.cornerRadius = 8
        return celulaCapa
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.bounds.width / 2
            return CGSize(width: cellWidth-15, height: 160)

        }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detalhe = movies[indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "detalhes") as! DetalhesFilmesViewController
        controller.filmeSelecionado = detalhe
        self.present(controller, animated: true, completion: nil)
    }
    
    // MARK: - Métodos
    
    func downloadJSON(completion: @escaping () -> ()){
        let url = URL(string: "https://api.themoviedb.org/3/trending/all/week?api_key=\(key)&language=pt-BR")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    let filmes = try JSONDecoder().decode(Filmes.self, from: data!)
                    self.movies = filmes.results
                    DispatchQueue.main.async {
                        completion()
                }
                }catch {
                    print("JSON Error")
                }
        }
        }.resume()
    }
//    func loadHome() {
//        clienteAPI.listaTodosFilmes { (filmes) in
//            if let _filmes = filmes {
//                self.movies = _filmes
//                self.printMovies()
//            } else {
//                print("Erro ao carregar os filmes")
//            }
//        }
//        clienteAPI.listaTodosFilmes { (capas) in
//            if let _capas = capas {
//                self.movies = _capas
//                self.printCapas()
//            } else {
//                print("Erro ao carregar as capas")
//            }
//        }
//    }
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
//    func printCapas() {
//        for movie in movies {
//            let capas: String
//            let posterPath = movie.posterPath
//                capas = "http://image.tmdb.org/t/p/w185/\(posterPath)"
//                print(capas)
//        }
//    }
    
}

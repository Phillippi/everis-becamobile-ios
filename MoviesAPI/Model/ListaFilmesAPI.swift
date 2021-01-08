//
//  ListaFilmesAPI.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/7/21.
//

import UIKit
import Alamofire
import AlamofireImage
import CoreData

class ListaFilmesAPI: NSObject {

    // MARK: - Variáveis
    
    let key = "fecd1e2331c61e4e88e8cedaa0d1734f"
    
    // MARK: - Métodos
    

    
    func listaTodosFilmes(completion: @escaping (([Filme]?) -> Void )) {
            Alamofire.request("https://api.themoviedb.org/3/trending/all/week?api_key=\(key)&language=pt-BR", method: .get).responseJSON { (response) in
                switch response.result {
                case .success:
                    
                    if let data = response.data {
                        do {
                            let moviesResponse = try JSONDecoder().decode(Filmes.self, from: data)
                            let movies = moviesResponse.results
                            completion(movies)
                        } catch let erro {
                            print(erro.localizedDescription)
                            completion(nil)
                        }
                        
                    } else {
                        print("Data nil")
                        completion(nil)
                    }
                    break
                case .failure:
                    print(response.error!)
                    completion(nil)
                    break
                }
            }
        }
}

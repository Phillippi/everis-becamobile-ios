//
//  ListaFilmesAPI.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/7/21.
//

import UIKit
import Alamofire
import AlamofireImage

class ListaFilmesAPI: NSObject {

    // MARK: - Variáveis
    
    let key = "fecd1e2331c61e4e88e8cedaa0d1734f"
    
    // MARK: - Métodos
    
    func listaCapaFilmes() {
            Alamofire.request("https://api.themoviedb.org/3/trending/all/week?api_key=\(key)&language=pt-BR", method: .get).responseJSON { (response) in
                switch response.result {
                case .success:
                    print(response.result.value!)
                    break
                case .failure:
                    print(response.error!)
                    break
                }
            }
        }
}

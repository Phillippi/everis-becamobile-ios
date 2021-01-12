//
//  MainViewModel.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/12/21.
//

import UIKit

class MainViewModel: NSObject {
    
    let key = "fecd1e2331c61e4e88e8cedaa0d1734f"
    var movies: [Filme] = []
    
    func downloadJSON(completion: @escaping (_ filmes:[Filme]) -> Void){
        let url = URL(string: "https://api.themoviedb.org/3/trending/all/week?api_key=\(key)&language=pt-BR")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    let filmes = try JSONDecoder().decode(Filmes.self, from: data!)
                    self.movies = filmes.results
                    DispatchQueue.main.async {
                        completion(self.movies)
                }
                }catch {
                    print("JSON Error")
                }
        }
        }.resume()
    }
}

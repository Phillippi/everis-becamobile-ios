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
        colecaoCapasFilmes.dataSource = self
        colecaoCapasFilmes.delegate = self
        MainViewModel().downloadJSON(completion: { (filme) in
            self.movies = filme
            self.colecaoCapasFilmes.reloadData()
        })
            
        
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
        return UIDevice.current.userInterfaceIdiom == .phone ? CGSize(width: collectionView.bounds.width/2-15, height: 160) : CGSize(width: collectionView.bounds.width/3-20, height: 250)
        }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detalhe = movies[indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "detalhes") as! DetalhesFilmesViewController
        controller.filmeSelecionado = detalhe
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
}

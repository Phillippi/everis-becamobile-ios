//
//  CapasFilmesCollectionViewCell.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/8/21.
//

import UIKit
import AlamofireImage

class CapasFilmesCollectionViewCell: UICollectionViewCell {
   
    // MARK: IBOutlets
    
    @IBOutlet weak var imagemCapa: UIImageView!
    
    // MARK: Métodos
    
    func configuraHome(listaFilme:Filme){
        guard let imageUrl = URL(string: "http://image.tmdb.org/t/p/w185/\(listaFilme.posterPath)") else { return }
        imagemCapa.af_setImage(withURL: imageUrl)
    }
}

//
//  CapasFilmesCollectionViewCell.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/8/21.
//

import UIKit
import AlamofireImage

class CapasFilmesCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var imagemCapa: UIImageView!
    //@IBOutlet weak var labelTitulo: UILabel!
    
    
    
    func configuraHome(listaFilme:Filme){
        //labelTitulo.text = listaFilme.title ?? listaFilme.name
        guard let imageUrl = URL(string: "http://image.tmdb.org/t/p/w185/\(listaFilme.posterPath)") else { return }
        imagemCapa.af_setImage(withURL: imageUrl)
    }
}

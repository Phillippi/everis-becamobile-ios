//
//  CapasFilmesCollectionModel.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/15/21.
//

import Foundation
import UIKit
import AlamofireImage

class CapasFilmesCollectionViewCellModel {
    
    
    var filmeSelecionado:Filme? = nil
    var imagemCapa:UIImageView? = nil
    
    
    func configuraHome(listaFilme:Filme){
        guard let imageUrl = URL(string: "http://image.tmdb.org/t/p/w185/\(listaFilme.posterPath)") else { return }
        self.imagemCapa!.af_setImage(withURL: imageUrl)
    }
    func retornaImagem() -> UIImageView {
        let imagem = self.imagemCapa
        return imagem!
    }
}

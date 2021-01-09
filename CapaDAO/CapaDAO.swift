//
//  CapaDAO.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/8/21.
//

import UIKit

class CapaDAO: NSObject {

    func retornaTodasAsCapas() -> Array<Capas> {
        let ceara = Capas(caminhoDaImagem: "img1.png")
        let rioDeJaneiro = Capas(caminhoDaImagem: "img2.jpg")
        let interiorSaoPaulo = Capas(caminhoDaImagem: "img3.jpg")
        let paraiba = Capas(caminhoDaImagem: "img4.jpg")
        let fortaleza = Capas(caminhoDaImagem: "img5.jpg")
        let listaViagem:Array<Capas> = [rioDeJaneiro, ceara, interiorSaoPaulo, paraiba, fortaleza]
        
        return listaViagem
    }
}

//
//  DetalhesFilmesViewController.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/9/21.
//

import UIKit
import AlamofireImage

class DetalhesFilmesViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var imageDetalheFilme: UIImageView!
    @IBOutlet weak var labelTituloDetalheFilme: UILabel!
    @IBOutlet weak var labelSinopseDetalheFilme: UILabel!
    @IBOutlet weak var labelAvaliacaoDetalheFilme: UILabel!
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    // MARK: - Váriaveis
    
    var filmeSelecionado:Filme? = nil
    
    
    // MARK: - Métodos
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let filme = filmeSelecionado {
            
//            self.imageDetalheFilme.image = configuraImagem(imageDetalheFilme)
            self.labelTituloDetalheFilme.text = filme.title ?? filme.name
            self.labelSinopseDetalheFilme.text = filme.overview
            self.labelAvaliacaoDetalheFilme.text = "Avaliação: \(String(filme.voteAverage))"
        }
    }
    func configuraImagem(_ imagem:Filme){
        //labelTitulo.text = listaFilme.title ?? listaFilme.name
        guard let imageUrl = URL(string: "http://image.tmdb.org/t/p/w185/\(imagem.backdropPath)") else { return }
        imageDetalheFilme.af_setImage(withURL: imageUrl)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

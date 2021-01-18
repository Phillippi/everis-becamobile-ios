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
    
    // MARK: IBActions
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    // MARK: - Váriaveis
    
    var filmeSelecionado:Filme? = nil
    let viewModel: DetalhesFilmesViewModel = DetalhesFilmesViewModel()
    
    // MARK: - Métodos
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
       configuraFilme()
//        viewModel.fetchImage()
        fetchImage()
        bind()
    }
    func bind() {
        viewModel.detalhesFilmesViewData.bind { (movieViewData) in
            guard let `movieViewData` = movieViewData else { return }
//            self.colecaoCapasFilmes.reloadData()
//            self.imageDetalheFilme.image = self.viewModel
        }
    }
    
    func configuraFilme() {
        if let filme = filmeSelecionado {
            self.labelTituloDetalheFilme.text = filme.title ?? filme.name
            self.labelSinopseDetalheFilme.text = filme.overview
            self.labelAvaliacaoDetalheFilme.text = "Avaliação: \(String(filme.voteAverage))"
        }
    }
    func fetchImage() {
        let urlString = "http://image.tmdb.org/t/p/w185/\(filmeSelecionado!.backdropPath)"
        guard let url = URL(string: urlString) else { return }
        let getDataTask = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else { return }

        DispatchQueue.main.async {
            let image = UIImage(data: data)
            self.imageDetalheFilme.image = image
        }
    }
        getDataTask.resume()
    }
}

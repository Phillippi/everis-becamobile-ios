//
//  ViewController.swift
//  MoviesAPI
//
//  Created by Phillippi Areias Aguiar on 1/7/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageCapaFilme: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadHome()
    }
    func loadHome() {
        ListaFilmesAPI().listaCapaFilmes()
    }
  
}

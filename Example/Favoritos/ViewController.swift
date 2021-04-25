//
//  ViewController.swift
//  Favoritos
//
//  Created by jaquelinesantos2810@gmail.com on 04/16/2021.
//  Copyright (c) 2021 jaquelinesantos2810@gmail.com. All rights reserved.
//

import UIKit
import Favoritos


class ViewController: UIViewController, FavoritosDelegate {
    
//    var chamaViewController: FavoritosViewController?
    var moedasFavoritadas = ["BTC","ETH","PLN","AUD"]
    @IBOutlet weak var stackFavoritos: UIStackView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        ViewTop().setupUI(delegate: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showDetailsAction()
        
    }
        func showDetailsAction() {
            let viewC = FavoritosViewController.fromSB(moedasFavoritadas)
            viewC.modalPresentationStyle = .fullScreen
            self.present(viewC, animated: true, completion: nil)
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    func viewFavoritosAction() {
        // slá, acho que chamada da detalhes.
    }
    
    func voltar() {
        self.dismiss(animated: true, completion: nil)
        print("-----Opa, vamos voltar")
    }


}


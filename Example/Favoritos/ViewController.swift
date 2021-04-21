//
//  ViewController.swift
//  Favoritos
//
//  Created by jaquelinesantos2810@gmail.com on 04/16/2021.
//  Copyright (c) 2021 jaquelinesantos2810@gmail.com. All rights reserved.
//

import UIKit
import Favoritos


class ViewController: UIViewController{
    
    
//    var chamaViewController: FavoritosViewController?
    var moedasFavoritadas = ["BTC","ETH","PLN","AUD"]
    @IBOutlet weak var stackFavoritos: UIStackView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showDetailsAction()
        
    }
        func showDetailsAction() {
            let viewC = FavoritosViewController.fromSB(moedasFavoritadas)
            self.present(viewC, animated: true, completion: nil)
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }


}


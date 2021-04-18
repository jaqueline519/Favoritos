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
    
    var chamaViewController: FavoritosViewController?
    
    @IBOutlet weak var stackFavoritos: UIStackView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showDetailsAction()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    
        func showDetailsAction() {
            let vc = FavoritosViewController.fromSB()
            vc.self
            self.present(vc, animated: true, completion: nil)
        }
}


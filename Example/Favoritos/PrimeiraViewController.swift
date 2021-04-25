//
//  PrimeiraViewController.swift
//  Favoritos_Example
//
//  Created by Jonattan Moises Sousa on 24/04/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

class PrimeiraViewController: UIViewController {
    var viewTela = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            guard let tela = storyboard?.instantiateViewController(identifier: "maeJoana") else { return }
            tela.modalPresentationStyle = .fullScreen
            self.viewTela = tela
        } else {
            // Fallback on earlier versions
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bttnNextPage(_ sender: UIButton) {
        present(viewTela, animated: true, completion: nil)
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

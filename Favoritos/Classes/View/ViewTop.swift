//
//  ViewTop.swift
//  Favoritos
//
//  Created by Jaqueline Bittencourt Santos on 17/04/21.
//

import UIKit
public protocol FavoritosDelegate: class {
    func viewFavoritosAction()
    func voltar()
}

public class ViewTop: UIView {
    
    @IBOutlet weak var MoedaDigital: UILabel!
    @IBOutlet weak var Data: UILabel!
    var favoritoDelegate: FavoritosDelegate?
    var actionVoltar: (() -> Void)?
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
     public init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 414, height: 143))
        layoutIfNeeded()
    }

    public func setupUI(delegate: FavoritosDelegate) {
        self.favoritoDelegate = delegate
        let viewTopo = ViewTop().loadNib()
        viewTopo.backgroundColor = UIColor.corPrimaria()
    }

    @IBAction func bttnVoltar(_ sender: UIButton) {
        if let acaoRetornar = self.actionVoltar {
            acaoRetornar()
        } else {
            self.favoritoDelegate?.voltar()
        }
        print("-----Opa, vamos voltar")
    }
}

extension UIView {
    func loadNib() -> UIView {
        let bundle = Bundle.init(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }

}

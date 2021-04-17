//
//  FavoritosCollectionViewCell.swift
//  Favoritos
//
//  Created by Jaqueline Bittencourt Santos on 16/04/21.
//

import UIKit

public protocol FavoritosViewDelegate: class {

}

public class FavoritosCollectionViewCell: UICollectionViewCell {
    
    var actionDetail: (() -> Void)?
    var viewFavoritosDelegate: FavoritosViewDelegate?
    
    @IBAction func buttonDetalhes(_ sender: UIButton) {
        
    }
    @IBOutlet weak var buttonMudaDeCor: UIButton!
    @IBOutlet weak var nomeMoeda: UILabel!
    @IBOutlet weak var siglaMoeda: UILabel!
    @IBOutlet weak var valorMoeda: UILabel!
    

    override public func awakeFromNib() {
        super.awakeFromNib()
        setupUICell()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupUICell() {
        self.buttonMudaDeCor.setTitleColor(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), for: UIControlState.normal)
        
    }

}
extension UIView {
    public static var bundleUI: Bundle {
        var bundle: Bundle
        if let bundeLet = Bundle(identifier: "org.cocoapods.Favoritos") {
            bundle = bundeLet
        } else {
            bundle = Bundle(for: self)
        }
        return bundle
    }
    public class func fromNib() -> Self {
        return fromNib(viewType: self)
    }
    public class func fromNib<T: UIView>(viewType: T.Type) -> T {
        if let nib = bundleUI.loadNibNamed(String(describing: viewType), owner: nil, options: nil)?.first as? T {
            return nib
        }
        return T()
    }
}

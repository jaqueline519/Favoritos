//
//  FavoritosViewController.swift
//  Favoritos
//
//  Created by Jaqueline Bittencourt Santos on 16/04/21.
//

import UIKit

public class FavoritosViewController: UIViewController {

    @IBOutlet weak var favoritosCollectionView: UICollectionView!
    public override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    public init() {
        super.init(nibName: "FavoritosStoryboard", bundle: Bundle(for: FavoritosViewController.self))
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
    func setupUI() {

}
extension UIViewController {
    public static var bundleUI: Bundle {
        var bundle: Bundle
        if let bundeLet = Bundle(identifier: "org.cocoapods.Favoritos") {
            bundle = bundeLet
        } else {
            bundle = Bundle(for: self)
        }
        return bundle
    }
    public class func fromSB() -> Self {
        return fromSB(viewType: self)
    }
    public class func fromSB<T: UIViewController>(viewType: T.Type) -> T {
        let storyboard = UIStoryboard(name: "FavoritosStoryboard", bundle: bundleUI)
        if let viewC = storyboard.instantiateViewController(withIdentifier: "FavoritosStoryboard") as? T {
            viewC.loadViewIfNeeded()
            return viewC
        }
        return T()
    }
}

//
//  FavoritosViewController.swift
//  Favoritos
//
//  Created by Jaqueline Bittencourt Santos on 17/04/21.
//

import UIKit

public protocol FavoritosDelegate: class {
    func viewFavoritosAction()
}

public class FavoritosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaFavoritos = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaFavoritos", for: indexPath) as! CollectionViewCell
        
        return celulaFavoritos
    }
    

    @IBOutlet weak var stackFavoritos: UIStackView!
    var favoritoDelegate: FavoritosDelegate?

    public override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    public func setupUI(delegate: FavoritosDelegate) {
        self.favoritoDelegate = delegate

    }
    
//    public required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        print("--Sou Required Init")
//    }
//
//    override public func awakeFromNib() {
//        super.awakeFromNib()
//    }
//
//    private func setupUIView() {
//        print("--Sou setupUIView")
//    }
//    func showDetailsAction() {
//            let vc = FavoritosViewController.fromSB()
//            vc.setupUI(delegate: self)
//            self.present(vc, animated: true, completion: nil)
//        }
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
        let sb = UIStoryboard(name: "MainStoryboard", bundle: bundleUI)
        if let vc = sb.instantiateViewController(withIdentifier: "MainStoryboard") as? T {
            vc.loadViewIfNeeded()
            return vc
        }
        return T()
    }
}

public class loadStory: UIViewController {
    public static func execLoad() -> UIViewController {
        if let bundle = Bundle(identifier: "org.cocoapods.Favoritos") {
            let sb = UIStoryboard(name: "MainStoryboard", bundle: bundle)
            let vc = sb.instantiateViewController(withIdentifier: "MainStoryboard") as! FavoritosViewController
            vc.loadViewIfNeeded()
            return vc
        } else {
            return UIViewController()
        }
        
    }
    
}

 

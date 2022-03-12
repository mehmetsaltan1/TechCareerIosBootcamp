//
//  ViewController.swift
//  Getir-UI-With-CollectionView
//
//  Created by Mehmet Saltan on 12.03.2022.
//

import UIKit

class ViewController: UIViewController {
  

    @IBOutlet weak var filterView: UIView!
    @IBOutlet var filterButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Navbar a resim atanması
        navigationController?.navigationBar.barStyle = .black
        let resim = UIImage(named: "getirlogo")
        self.navigationItem.titleView = UIImageView(image: resim)
        //Filtre butonlarına özellik aktarımı
        filterButtons.forEach { btn in
            btn.layer.cornerRadius = 6
            btn.layer.borderWidth = 1
            btn.layer.borderColor = UIColor.gray.cgColor
        }
        //Filter view'ına gölge verme işlemi
        filterView.layer.shadowColor = UIColor.gray.cgColor
        filterView.layer.shadowOpacity = 1
        filterView.layer.shadowOffset = CGSize(width: 0, height: 2)
        filterView.layer.masksToBounds = false
    }


}


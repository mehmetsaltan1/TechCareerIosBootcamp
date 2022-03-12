//
//  ViewController.swift
//  Getir-UI-With-CollectionView
//
//  Created by Mehmet Saltan on 12.03.2022.
//

import UIKit

class ViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
        let resim = UIImage(named: "getirlogo3")
        self.navigationItem.titleView = UIImageView(image: resim)
        
    }


}


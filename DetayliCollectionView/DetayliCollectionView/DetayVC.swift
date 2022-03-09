//
//  DetayVC.swift
//  DetayliCollectionView
//
//  Created by Mehmet Saltan on 9.03.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var filmYonetmenAdiLabel: UILabel!
    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    
    var film:Filmler?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let f = film {
            filmAdiLabel.text = f.filmAdi
            filmYonetmenAdiLabel.text = f.filmYonetmenAdi
            filmImageView.image = UIImage(named: f.filmResimAdi!)
            filmFiyatLabel.text = "\(f.filmFiyat!) ₺"
        }
     
    }
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let f = film {
            print("\(f.filmAdi) \(f.filmFiyat) ₺ fiyatla sepete eklendi")
        }
    }
    

}

//
//  DetayVC.swift
//  CollectionViewKullanimi
//
//  Created by Mehmet Saltan on 7.03.2022.
//

import UIKit

class DetayVC: UIViewController {
    @IBOutlet weak var ulkeAdLabel: UILabel!
    
    @IBOutlet weak var ulkeBaskentLabel: UILabel!
    
    @IBAction func buttonVize(_ sender: Any) {
        if let u = ulke {
            print("\(u.ulkeAd!) vize başvurusu yapıldı")
        }
    }
    
    var ulke:Ulkeler?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let u = ulke {
            ulkeAdLabel.text = u.ulkeAd
            ulkeBaskentLabel.text = u.ulkeBaskent
        }
        // Do any additional setup after loading the view.
    }
    


}

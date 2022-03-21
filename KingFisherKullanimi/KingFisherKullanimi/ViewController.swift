//
//  ViewController.swift
//  KingFisherKullanimi
//
//  Created by Mehmet Saltan on 21.03.2022.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resimGoster(resimAd: "kofte.png")
    }

    @IBAction func buttonResim1(_ sender: Any) {
        resimGoster(resimAd: "fanta.png")
    }
    @IBAction func buttonResim2(_ sender: Any) {
        resimGoster(resimAd: "ayran.png")
    }
    
    func resimGoster(resimAd:String) {
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAd)") {
            DispatchQueue.main.async {
                self.imageView.kf.setImage(with:url)
            }
        }
    }
}


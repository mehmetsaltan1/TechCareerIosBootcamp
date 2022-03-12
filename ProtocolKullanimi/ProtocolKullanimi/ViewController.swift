//
//  ViewController.swift
//  ProtocolKullanimi
//
//  Created by Mehmet Saltan on 9.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func buttonGecisYap(_ sender: Any) {
        performSegue(withIdentifier: "toDetay", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.delegate = self // Yetkilendirdik
        }
    }
    
}

extension ViewController : DetayVCToViewControllerProtocol { //Protocolu sınıfa ekledik
    func veriGonder(mesaj: String) {
        lblSonuc.text = mesaj
    }
}


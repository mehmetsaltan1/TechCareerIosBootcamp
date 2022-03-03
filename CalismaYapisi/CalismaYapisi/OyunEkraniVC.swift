//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Mehmet Saltan on 23.02.2022.
//

import UIKit

class OyunEkraniVC: UIViewController {
    var kisi:Kisiler?
    @IBAction func buttonBitirTikla(_ sender: Any) {
        //Sayfalar arası geçiş kodlaması
        performSegue(withIdentifier: "sonucEkraniGecis", sender: nil)
    }
    
    @IBAction func buttonGeriTikla(_ sender: Any) {
       // navigationController?.popViewController(animated: true) // Bir önceki sayfaya geri dönüşü sağlar
        navigationController?.popToRootViewController(animated: true) //Anasayfaya götürür 100 sayfa da açılmış olsa ilk sayfaya götürür
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let k = kisi {
            print("Gelen : \(k.ad!) - \(k.yas!) - \(k.boy!) - \(k.bekar!)")
        }
        
    }
    

}

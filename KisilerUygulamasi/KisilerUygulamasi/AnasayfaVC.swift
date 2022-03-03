//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Mehmet Saltan on 2.03.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBAction func buttonTikla(_ sender: Any) {
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "Mehmet", kisi_tel: "0784798237")
        performSegue(withIdentifier: "toDetay", sender: kisi)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let kisi = sender as? Kisiler
            let gidilecekVC = segue.destination as! KisiDetayVC
            //As? As! downcasting - As upcasting
            gidilecekVC.kisi = kisi
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self // Yetkilendirdik
  
    }

    
}
extension AnasayfaVC : UISearchBarDelegate { //Bu extensiona eklenen her özellik anasayfaya eklenmiş gibi
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonucu : \(searchText)")
    }
}


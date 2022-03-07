//
//  ViewController.swift
//  DetayliTableViewKullanimi
//
//  Created by Mehmet Saltan on 5.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urunlerTableView: UITableView!
    
    var urunlerListe = [Urunler]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        urunlerTableView.separatorColor = UIColor.init(white: 0.95, alpha: 1)
        urunlerTableView.delegate = self
        urunlerTableView.dataSource = self
        let u1 = Urunler(urun_id: 1, urun_ad: "Macbook Pro 14", urun_resim_ad: "bilgisayar", urun_fiyat: 23499.9)
        let u2 = Urunler(urun_id: 2, urun_ad: "Rayban Club Master", urun_resim_ad: "gozluk", urun_fiyat: 349.9)
        let u3 = Urunler(urun_id: 3, urun_ad: "Sony ZX Series", urun_resim_ad: "kulaklik", urun_fiyat: 379.9)
        let u4 = Urunler(urun_id: 4, urun_ad: "Gio Armani", urun_resim_ad: "parfum", urun_fiyat: 789.9)
        let u5 = Urunler(urun_id: 5, urun_ad: "Casio X Series", urun_resim_ad: "saat", urun_fiyat: 169.9)
        let u6 = Urunler(urun_id: 6, urun_ad: "Dyson V8", urun_resim_ad: "supurge", urun_fiyat:1589.9)
        let u7 = Urunler(urun_id: 7, urun_ad: "Iphone 13 Pro", urun_resim_ad: "telefon", urun_fiyat: 13499.9)
        
        urunlerListe.append(u1)
        urunlerListe.append(u2)
        urunlerListe.append(u3)
        urunlerListe.append(u4)
        urunlerListe.append(u5)
        urunlerListe.append(u6)
        urunlerListe.append(u7)
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource,HucreProtocol {
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urunlerListe.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let urun = urunlerListe[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "urunHucre", for: indexPath) as! UrunTableViewCell
        hucre.urunResimImageView.image = UIImage(named: urun.urun_resim_ad!)
        hucre.urunAdLabel.text = urun.urun_ad
        hucre.urunFiyatLabel.text = "\(urun.urun_fiyat!) ₺"
        hucre.backgroundColor = UIColor.init(white: 0.95, alpha: 1)
        hucre.hucreArkaPlan.layer.cornerRadius = 10.0
        //Yetkilendirme
        hucre.hucreProtocol = self
        hucre.indexPath = indexPath
        return hucre
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let urun = urunlerListe[indexPath.row]
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){ (ca,v,b) in
            print("\(urun.urun_ad!) silindi")
        }
        let duzenleAction = UIContextualAction(style: .normal, title: "Düzenle"){ (ca,v,b) in
            print("\(urun.urun_ad!) düzenlendi")
            self.performSegue(withIdentifier: "toDetay", sender: urun)
            
        }
        return UISwipeActionsConfiguration(actions: [silAction,duzenleAction])
    }
    func buttonTiklandi(indexPath: IndexPath) {
        let urun = urunlerListe[indexPath.row]
        print("\(urun.urun_ad!) sepete eklendi")
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let urun = urunlerListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: urun)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let urun = sender as? Urunler
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.urun = urun
        }
    }
}


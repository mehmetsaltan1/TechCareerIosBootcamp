//
//  ViewController.swift
//  Getir-UI-With-CollectionView
//
//  Created by Mehmet Saltan on 12.03.2022.
//

import UIKit

class ViewController: UIViewController {
  

    @IBOutlet weak var urunlerCollectionView: UICollectionView!
    @IBOutlet weak var filterView: UIView!
    @IBOutlet var filterButtons: [UIButton]!
    var urunlerListesi = [Urunler]()
    @IBOutlet weak var navtitleItem: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        urunlerCollectionView.delegate = self
        urunlerCollectionView.dataSource = self
        //Urunleri oluşturma
        let u1 = Urunler(urunId: 1, urunAd: "Ananas", urunResimAdi: "ananas", urunFiyat: 25.45, urunGramaj: "1 kg")
        let u2 = Urunler(urunId: 2, urunAd: "Armut", urunResimAdi: "armut", urunFiyat: 14.95, urunGramaj: "1 kg")
        let u3 = Urunler(urunId: 3, urunAd: "Avakado", urunResimAdi: "avakado", urunFiyat: 9.95, urunGramaj: "1 Adet")
        let u4 = Urunler(urunId: 4, urunAd: "Elma", urunResimAdi: "elma", urunFiyat: 10.95, urunGramaj: "1 kg")
        let u5 = Urunler(urunId: 5, urunAd: "Greyfurt", urunResimAdi: "greyfurt", urunFiyat: 7.45, urunGramaj: "1 kg")
        let u6 = Urunler(urunId: 6, urunAd: "Kavun", urunResimAdi: "kavun", urunFiyat: 25.95, urunGramaj: "2 kg")
        let u7 = Urunler(urunId: 7, urunAd: "Kivi", urunResimAdi: "kivi", urunFiyat: 10.45, urunGramaj: "500 g")
        let u8 = Urunler(urunId: 8, urunAd: "Mandalina", urunResimAdi: "mandalina", urunFiyat: 25.45, urunGramaj: "1 kg")
        let u9 = Urunler(urunId: 9, urunAd: "Meyve Tabağı", urunResimAdi: "meyvetabagi", urunFiyat: 45.45, urunGramaj: "2 kg")
        let u10 = Urunler(urunId: 10, urunAd: "Muşmula", urunResimAdi: "musmula", urunFiyat: 14.25, urunGramaj: "1 kg")
        let u11 = Urunler(urunId: 11, urunAd: "Muz", urunResimAdi: "muz", urunFiyat: 13.95, urunGramaj: "750 g")
        let u12 = Urunler(urunId: 12, urunAd: "Üzüm", urunResimAdi: "uzum", urunFiyat: 35.95, urunGramaj: "1 kg")
        //Urunleri Listeye ekleme
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)
        urunlerListesi.append(u7)
        urunlerListesi.append(u8)
        urunlerListesi.append(u9)
        urunlerListesi.append(u10)
        urunlerListesi.append(u11)
        urunlerListesi.append(u12)
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 0
        let genislik = urunlerCollectionView.frame.size.width
        let hucreGenislik = (genislik-60)/3
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*2)
        urunlerCollectionView!.collectionViewLayout = tasarim
        navigationController?.navigationBar.barStyle = .black
        //Navbar a resim atanması
        let resim = UIImage(named: "getirlogo")
        self.navigationItem.titleView = UIImageView(image: resim)
        //Filtre butonlarına özellik aktarımı
        filterButtons.forEach { btn in
            btn.layer.cornerRadius = 6
            btn.layer.borderWidth = 1
            btn.layer.borderColor =  UIColor.gray.withAlphaComponent(0.3).cgColor
        }
        //Filter view'ına gölge verme işlemi
        filterView.layer.shadowColor = UIColor.gray.cgColor
        filterView.layer.shadowOpacity = 1
        filterView.layer.shadowOffset = CGSize(width: 0, height: 2)
        filterView.layer.masksToBounds = false
    }


}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        urunlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let urun = urunlerListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! UrunlerCollectionViewCell
        cell.urunImageView.image = UIImage(named: urun.urunResimAdi!)
        cell.urunImageView.layer.cornerRadius = 16
        cell.urunImageView.layer.borderWidth = 1
        cell.urunImageView.layer.borderColor =  UIColor.gray.withAlphaComponent(0.3).cgColor
        cell.urunSepeteEkleButton.layer.cornerRadius = 8
        cell.urunSepeteEkleButton.layer.borderWidth = 1
        cell.urunSepeteEkleButton.layer.borderColor =  UIColor.gray.withAlphaComponent(0.3).cgColor
        cell.urunAdiLabel.text = urun.urunAd!
        cell.urunFiyatLabel.text = "₺\(urun.urunFiyat!)"
        cell.urunGramajLabel.text = urun.urunGramaj!
        
        
        return cell
    }
    
    
}

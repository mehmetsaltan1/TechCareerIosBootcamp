//
//  ViewController.swift
//  DetayliCollectionView
//
//  Created by Mehmet Saltan on 9.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    var filmlerListesi = [Filmler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
        let f1 = Filmler(filmId: 1, filmAdi: "Django", filmResimAdi: "django", filmYonetmenAdi: "Quentin Tarantino", filmFiyat: 15.99)
        let f2 = Filmler(filmId: 2, filmAdi: "Inception", filmResimAdi: "inception", filmYonetmenAdi: "Christopher Nolan", filmFiyat: 13.99)
        let f3 = Filmler(filmId: 3, filmAdi: "Interstellar", filmResimAdi: "interstellar", filmYonetmenAdi: "Christopher Nolan", filmFiyat: 18.99)
        let f4 = Filmler(filmId: 4, filmAdi: "Anadoluda", filmResimAdi: "anadoluda", filmYonetmenAdi: "Nuri Bilge Ceylan", filmFiyat: 8.99)
        let f5 = Filmler(filmId: 5, filmAdi: "The Hateful Eight", filmResimAdi: "thehatefuleight", filmYonetmenAdi: "Quentin Tarantino", filmFiyat: 14.99)
        let f6 = Filmler(filmId: 6, filmAdi: "The Pianist", filmResimAdi: "thepianist", filmYonetmenAdi: "Roman Polanski", filmFiyat: 10.99)
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10  //Yataydaki boşluk
        tasarim.minimumLineSpacing = 10 //Dikeydeki boşluk
        let genislik = filmlerCollectionView.frame.size.width
        let hucreGenislik = (genislik - 30) / 2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik * 1.7)
        filmlerCollectionView!.collectionViewLayout = tasarim
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmlerListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmlerCollectionViewCell
        
        cell.filmImageView.image = UIImage(named: film.filmResimAdi!)
        cell.filmAdiLabel.text = film.filmAdi
        cell.filmFiyatLabel.text = "\(film.filmFiyat!) ₺"
        
        cell.layer.borderColor = UIColor.systemIndigo.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10
        
        return cell
    }
    
    
}

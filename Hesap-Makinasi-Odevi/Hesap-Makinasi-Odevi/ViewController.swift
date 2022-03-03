//
//  ViewController.swift
//  Hesap-Makinasi-Odevi
//
//  Created by Mehmet Saltan on 2.03.2022.
//

import UIKit

class ViewController: UIViewController {
    var sayi1 = "0"
    @IBOutlet weak var lblHesaplamaSonucu: UILabel!
    @IBAction func onClick(_ sender: UIButton) {
        switch sender.titleLabel!.text {
        case "+":
            artiTiklandi()
        case "Sifirla":
            sifirla()
        case "Hesapla":
            topla(alinanSayi: lblHesaplamaSonucu.text!)
        default:
            degerAta(gelenDeger: sender.titleLabel!.text!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lblHesaplamaSonucu.text = "0"
   
    }
    func sifirla(){
        lblHesaplamaSonucu.text = "0"
        sayi1 = "0"
    }

    func artiTiklandi(){
       
        if let alinanSayi = lblHesaplamaSonucu.text {
            sayi1 = "\(Int(alinanSayi)! + Int(sayi1)!)"
            /* Üstte yapılan işlemde kullanıcı 2 den fazla sayı girdiğinde uygulamada hata oluşuyordu
            yapılan işlemle bu sorun çözüldü kullanıcı artı butonuna her tıkladığında bellekte kalan değer ile
            son girilen değer birbirleriyle toplanıp istenilen sonuç bulunuyor
             */
            lblHesaplamaSonucu.text = "0"
        }

    }
    func topla(alinanSayi:String){
        let sayi = Int(alinanSayi)
        let defaultSayi = Int(sayi1)
        let toplam = sayi! + defaultSayi!
        lblHesaplamaSonucu.text = String(toplam)
        sayi1 = "0"
        /* Kullanıcı hesapla tuşunda tıkladıktan sonra değer ekrana basılıyordu fakat 2.kez
                bastığında kullanıcı ek bir değer girmemesine rağmen bellekte kalan sayıyla sonuç toplanıp ekrana
                yanlış bilgi bastırılıyordu sayi1 değerini burada sıfırlayınca bu sorun ortadan kalktı
                */
        
    }
    func degerAta(gelenDeger:String){
        if lblHesaplamaSonucu.text == "0"{
            lblHesaplamaSonucu.text = gelenDeger
        }else{
            if let sonuc = lblHesaplamaSonucu.text{
                lblHesaplamaSonucu.text = "\(sonuc)\(gelenDeger)"
            }
      
        }
    }
    

}


//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Mehmet Saltan on 23.02.2022.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func buttonBaslaTikla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        //Sayfalar arası geçiş kodlaması
        performSegue(withIdentifier: "oyunEkraniGecis", sender: kisi)
    }
    
    //Sayfadaki tüm geçişi dinleme
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        if segue.identifier == "oyunEkraniGecis"{
            print("Oyun Ekrani Geçiş Çalıştı")
            if let veri = sender as? Kisiler{
               
                let gidilecekVC = segue.destination as! OyunEkraniVC //Karşıdaki sayfaya veri gönderme
                gidilecekVC.kisi = veri
            }
          
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //Androiddeki onCreate ile aynı yani tek bir kez çalışır !
       print("view didload çalıştı")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear çalıştı")

    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear çalıştı")
    }
    
    @IBAction func addItem(_ sender: Any) {
        print("add")
    }
    
    @IBAction func cameraıtem(_ sender: Any) {
        print("camera")
    }
}


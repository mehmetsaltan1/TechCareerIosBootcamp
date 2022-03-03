//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Mehmet Saltan on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "İçerik", preferredStyle: .alert)
        let iptalAction = UIAlertAction(title: "Kapat", style: .cancel) { action in
            print("iptal seçildi")
        }
        alertController.addAction(iptalAction)
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam seçildi")
        }
        alertController.addAction(tamamAction)
        self.present(alertController,animated: true)
    }
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "İçerik", preferredStyle: .actionSheet)
        let iptalAction = UIAlertAction(title: "Kapat", style: .cancel) { action in
            print("iptal seçildi")
        }
        alertController.addAction(iptalAction)
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam seçildi")
        }
        alertController.addAction(tamamAction)
        self.present(alertController,animated: true)
    }
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "İçerik", preferredStyle: .alert)
        alertController.addTextField { textField in
            textField.placeholder = "Veri giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        let iptalAction = UIAlertAction(title: "Kaydet", style: .cancel) { action in
            let textField = alertController.textFields![0] as UITextField
            if let alinanVeri = textField.text {
             
                print("Veri : \(alinanVeri)")
            }
           
        }
        alertController.addAction(iptalAction)
       
        self.present(alertController,animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


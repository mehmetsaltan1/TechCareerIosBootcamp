//
//  SayfaYVC.swift
//  TechCareerIosBootcamp-Sayfalar-Arasi-Gecis-Odevi
//
//  Created by Mehmet Saltan on 27.02.2022.
//

import UIKit

class SayfaYVC: UIViewController {

    @IBAction func buttonGeriGitTikla(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true //Burada navigaitonitem içerisinde yer alan back butonunu devre dışı bırakıp kullancıyı ilk sayfaya geri dönmeye zorladım
    
    }
    

}

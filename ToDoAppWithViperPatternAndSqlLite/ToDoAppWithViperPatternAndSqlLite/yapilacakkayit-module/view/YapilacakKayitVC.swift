//
//  YapilacakKayitVC.swift
//  ToDoAppWithViperPatternAndSqlLite
//
//  Created by Mehmet Saltan on 20.03.2022.
//

import UIKit

class YapilacakKayitVC: UIViewController {

    @IBOutlet weak var tfYapilacakAd: UITextField!
    var yapilacakKayitPressenterNesnesi:ViewToPresenterYapilacakKayitProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ya = tfYapilacakAd.text  {
            yapilacakKayitPressenterNesnesi?.ekle(yapilacak_ad: ya)
           print("Yapılacak")
        }
    }
    
}

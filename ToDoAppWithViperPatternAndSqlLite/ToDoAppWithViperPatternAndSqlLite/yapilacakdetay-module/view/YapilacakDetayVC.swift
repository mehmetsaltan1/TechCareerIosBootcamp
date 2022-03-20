//
//  YapilacakDetayVC.swift
//  ToDoAppWithViperPatternAndSqlLite
//
//  Created by Mehmet Saltan on 20.03.2022.
//

import UIKit

class YapilacakDetayVC: UIViewController {

    @IBOutlet weak var tfYapilacak: UITextField!
    var yapilacakDetayPresenterNesnesi:ViewToPresenterYapilacakDetayProtocol?
    var yapilacak:Yapilacaklar?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let y = yapilacak {
            tfYapilacak.text = y.yapilacak_ad
        }
        YapilacakDetayRouter.createModule(ref: self)
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ya = tfYapilacak.text,let y = yapilacak {
            
            yapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_ad: ya)
            
        }
    }
   
}

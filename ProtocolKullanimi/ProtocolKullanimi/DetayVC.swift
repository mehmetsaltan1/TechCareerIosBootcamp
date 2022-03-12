//
//  DetayVC.swift
//  ProtocolKullanimi
//
//  Created by Mehmet Saltan on 12.03.2022.
//

import UIKit

class DetayVC: UIViewController {
    var delegate:DetayVCToViewControllerProtocol?
    @IBOutlet weak var textFieldGirdi: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonGonder(_ sender: Any) {
        if let mesaj = textFieldGirdi.text {
            delegate?.veriGonder(mesaj: mesaj) //Protocol nesnesinden yararlanarak fonksiyonu tetikledik.
        }
    }
    
}

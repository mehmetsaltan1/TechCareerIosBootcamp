//
//  ViewController.swift
//  TimeDatePickerKullanimi
//
//  Created by Mehmet Saltan on 2.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTarih: UITextField!
    @IBOutlet weak var tfSaat: UITextField!
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfTarih.inputView = datePicker
        datePicker?.preferredDatePickerStyle = .wheels //Tekerlikli yapıya çevirdik
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tfSaat.inputView = timePicker
        timePicker?.preferredDatePickerStyle = .wheels //Tekerlikli yapıya çevirdik
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgila)  )
        view.addGestureRecognizer(dokunmaAlgilama)
        datePicker?.addTarget(self, action: #selector(tarihGoster(datePicker:)), for: .valueChanged)
        timePicker?.addTarget(self, action: #selector(saatGoster(datePicker:)), for: .valueChanged)
    }
   @objc func dokunmaAlgila(){
        print("Ekrana dokunuldu")
       view.endEditing(true) // Ekrana dokunulduğu anda ekran üzerinde açık olan her şeyi kapatır.
    }
    @objc func tarihGoster(datePicker:UIDatePicker){
        let tarihFormati = DateFormatter()
        tarihFormati.dateFormat = "dd/MM/yyyy"
        let alinanTarih = tarihFormati.string(from: datePicker.date)
        tfTarih.text = alinanTarih
    }
    @objc func saatGoster(datePicker:UIDatePicker){
        let saatFormati = DateFormatter()
        saatFormati.dateFormat = "hh:mm"
        let alinanSaat = saatFormati.string(from: datePicker.date)
        tfSaat.text = alinanSaat
    }
}


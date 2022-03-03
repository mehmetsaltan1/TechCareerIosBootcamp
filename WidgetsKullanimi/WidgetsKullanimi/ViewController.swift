//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Mehmet Saltan on 26.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldGirdi: UITextField!
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBAction func buttonResim2(_ sender: Any) {
        imageView.image = UIImage(named:"resim2")
    }
    @IBAction func buttonResim1(_ sender: Any) {
        imageView.image = UIImage(named:"resim1")
    }
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func buttonYao(_ sender: Any) {
        if let alinanVeri = textfieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    @IBAction func switchKonumDegistir(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : ON")
        } else{
            print("Switch : OFF")
        }
    }
    
    @IBOutlet weak var mSwitch: UISwitch!
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch durum : \(mSwitch.isOn)")
        print("Segmented en son : \(segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)!)")
        print("Slider değer : \(Int(slider.value))")
        print("Stepper değer : \(Int(stepper.value))")
    }
    @IBAction func segmentedDegisimControl(_ sender: UISegmentedControl) {
        let secilenIndeks = sender.selectedSegmentIndex
        print("Seçim : \(sender.titleForSegment(at: secilenIndeks)!)")
    }
    
    @IBAction func sliderDegisimKontrol(_ sender: UISlider) {
        labelSlider.text = String(Int(slider.value))
    }
    
    @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.stopAnimating()
        indicator.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true
        labelSlider.text = String(Int(slider.value))
       
        // Do any additional setup after loading the view.
    }


}


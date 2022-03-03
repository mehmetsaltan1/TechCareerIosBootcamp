//
//  Kisiler.swift
//  CalismaYapisi
//
//  Created by Mehmet Saltan on 26.02.2022.
//

import Foundation
class Kisiler{

    var ad:String?
    var yas:Int?
    var boy:Double?
    var bekar:Bool?
    init(){
        
    }
    init (ad:String,yas:Int,boy:Double,bekar:Bool){
        //Shadowing
        self.ad = ad
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
}

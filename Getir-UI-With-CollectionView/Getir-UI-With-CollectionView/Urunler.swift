//
//  Urunler.swift
//  Getir-UI-With-CollectionView
//
//  Created by Mehmet Saltan on 12.03.2022.
//

import Foundation
class Urunler {
    var urunId:Int?
    var urunAd:String?
    var urunResimAdi:String?
    var urunFiyat:Double?
    var urunGramaj:String?
    
    init(){
        
    }
    init (urunId:Int,urunAd:String,urunResimAdi:String,urunFiyat:Double,urunGramaj:String){
        self.urunId = urunId
        self.urunAd = urunAd
        self.urunResimAdi = urunResimAdi
        self.urunFiyat = urunFiyat
        self.urunGramaj = urunGramaj
    }
}

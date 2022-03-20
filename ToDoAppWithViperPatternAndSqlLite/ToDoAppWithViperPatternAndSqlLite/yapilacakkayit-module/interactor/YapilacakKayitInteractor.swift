//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Öznur Altıntaş on 14.03.2022.
//

import Foundation

class YapilacakKayitInteractor :PresenterToInteractorYapilacakKayitProtocol{
    let db:FMDatabase?
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniUrl = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacak.sqlite")
        db = FMDatabase(path: veritabaniUrl.path)
    }
    func yapilacakEkle(yapilacak_ad: String) {
        db?.open()
        
        db?.close()
        print("Yapılacak kayıt : \(yapilacak_ad)")
    }
    
    
}

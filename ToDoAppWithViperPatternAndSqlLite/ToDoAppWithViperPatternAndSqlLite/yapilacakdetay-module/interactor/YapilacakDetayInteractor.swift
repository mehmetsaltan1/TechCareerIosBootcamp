//
//  YapilacakDetayInteractor.swift
//  ToDoAppWithViperPatternAndSqlLite
//
//  Created by Mehmet Saltan on 20.03.2022.
//


import Foundation

class YapilacakDetayInteractor : PresenterToInteractorYapilacakDetayProtocol{
    let db:FMDatabase?
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniUrl = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacak.sqlite")
        db = FMDatabase(path: veritabaniUrl.path)
    }
    func yapilacakGuncelle(yapilacak_id: Int, yapilacak_ad: String) {
        db?.open()
        
        db?.close()
        print("Yapılacak güncelle : \(yapilacak_id) - \(yapilacak_ad)")
    }
    
    
}

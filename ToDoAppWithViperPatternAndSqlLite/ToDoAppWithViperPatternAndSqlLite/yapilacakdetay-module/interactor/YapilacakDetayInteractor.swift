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
        do {
            try db?.executeUpdate("UPDATE yapilacaklar SET yapilacak_ad = ? WHERE yapilacak_id = ?", values: [yapilacak_ad,yapilacak_id])
        }catch{
        print("hata")
        }
        db?.close()
       
    }
    
    
}

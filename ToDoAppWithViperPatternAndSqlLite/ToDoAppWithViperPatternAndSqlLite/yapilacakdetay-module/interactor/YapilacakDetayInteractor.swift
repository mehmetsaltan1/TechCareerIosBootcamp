//
//  YapilacakDetayInteractor.swift
//  ToDoAppWithViperPatternAndSqlLite
//
//  Created by Mehmet Saltan on 20.03.2022.
//


import Foundation

class YapilacakDetayInteractor : PresenterToInteractorYapilacakDetayProtocol{
    func yapilacakGuncelle(yapilacak_id: Int, yapilacak_ad: String) {
        print("Yapılacak güncelle : \(yapilacak_id) - \(yapilacak_ad)")
    }
    
    
}

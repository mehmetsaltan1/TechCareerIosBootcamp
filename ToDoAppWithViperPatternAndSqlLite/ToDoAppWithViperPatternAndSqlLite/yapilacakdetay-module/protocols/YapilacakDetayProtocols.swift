//
// YapilacakDetayProtocols.swift
//  ToDoAppWithViperPatternAndSqlLite
//
//  Created by Mehmet Saltan on 20.03.2022.
//

import Foundation

protocol ViewToPresenterYapilacakDetayProtocol {
    var yapilacakDetayInteractor:PresenterToInteractorYapilacakDetayProtocol?{get set}
    
    func guncelle(yapilacak_id:Int, yapilacak_ad:String)
}

protocol PresenterToInteractorYapilacakDetayProtocol {
    func yapilacakGuncelle(yapilacak_id:Int, yapilacak_ad:String)
}

protocol PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref:YapilacakDetayVC)
}

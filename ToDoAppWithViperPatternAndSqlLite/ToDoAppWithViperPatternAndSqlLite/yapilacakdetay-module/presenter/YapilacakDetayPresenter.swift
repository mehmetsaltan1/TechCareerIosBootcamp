//
//  YapilacakDetayInteractor.swift
//  ToDoAppWithViperPatternAndSqlLite
//
//  Created by Mehmet Saltan on 20.03.2022.
//

import Foundation

class YapilacakDetayPresenter :ViewToPresenterYapilacakDetayProtocol{
    var yapilacakDetayInteractor: PresenterToInteractorYapilacakDetayProtocol?
    
    
  
    func guncelle(yapilacak_id: Int, yapilacak_ad: String) {
        yapilacakDetayInteractor?.yapilacakGuncelle(yapilacak_id: yapilacak_id, yapilacak_ad: yapilacak_ad)
    }

}

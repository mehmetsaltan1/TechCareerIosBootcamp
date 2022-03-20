//
//  YapilacakDetayRouter.swift
//  ToDoAppWithViperPatternAndSqlLite
//
//  Created by Mehmet Saltan on 20.03.2022.
//

import Foundation

class YapilacakDetayRouter :PresenterToRouterYapilacakDetayProtocol{
    static func createModule(ref: YapilacakDetayVC) {
        ref.yapilacakDetayPresenterNesnesi = YapilacakDetayPresenter()
        ref.yapilacakDetayPresenterNesnesi?.yapilacakDetayInteractor = YapilacakDetayInteractor()
    }
    
    
}

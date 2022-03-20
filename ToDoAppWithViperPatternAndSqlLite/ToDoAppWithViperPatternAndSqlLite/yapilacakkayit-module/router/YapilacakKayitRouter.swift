//
//  KisiKayitRouter.swift
//  KisilerUygulamasi
//
//  Created by Öznur Altıntaş on 14.03.2022.
//

import Foundation

class YapilacakKayitRouter : PresenterToRouterYapilacakKayitProtocol{
    static func createModule(ref: YapilacakKayitVC) {
        ref.yapilacakKayitPressenterNesnesi = YapilacakKayitPresenter()
        ref.yapilacakKayitPressenterNesnesi?.yapilacakKayitInteractor = YapilacakKayitInteractor()
    }
    
    
}

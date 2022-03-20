

import Foundation

protocol ViewToPresenterYapilacakKayitProtocol{
    var yapilacakKayitInteractor:PresenterToInteractorYapilacakKayitProtocol?{get set}
    
    func ekle(yapilacak_ad:String)
}

protocol PresenterToInteractorYapilacakKayitProtocol{
    func yapilacakEkle(yapilacak_ad:String)
}

protocol PresenterToRouterYapilacakKayitProtocol{
    static func createModule(ref:YapilacakKayitVC)
}

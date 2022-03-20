

import Foundation

class YapilacakKayitPresenter :ViewToPresenterYapilacakKayitProtocol{
    var yapilacakKayitInteractor: PresenterToInteractorYapilacakKayitProtocol?
    
    func ekle(yapilacak_ad: String) {
        yapilacakKayitInteractor?.yapilacakEkle(yapilacak_ad: yapilacak_ad)
    }
    
    
}

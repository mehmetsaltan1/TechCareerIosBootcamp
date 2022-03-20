

import Foundation

class YapilacakKayitRouter : PresenterToRouterYapilacakKayitProtocol{
    static func createModule(ref: YapilacakKayitVC) {
        ref.yapilacakKayitPressenterNesnesi = YapilacakKayitPresenter()
        ref.yapilacakKayitPressenterNesnesi?.yapilacakKayitInteractor = YapilacakKayitInteractor()
    }
    
    
}



import Foundation


class AnasayfaInteractor :PresenterToInteractorAnasayfaProtocol{
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    func tumYapilacaklariAl() {
        var liste = [Yapilacaklar]()
        anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
    }
    
    func yapilacakAra(aramaKelimesi: String) {
        print("Arama sonucu : \(aramaKelimesi)")
    }
    
    func yapilacakSil(yapilacak_id: Int) {
        print("\(yapilacak_id) silindi")
    }
    
    
}

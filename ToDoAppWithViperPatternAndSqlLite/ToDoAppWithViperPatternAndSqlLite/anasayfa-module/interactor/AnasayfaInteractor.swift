//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Öznur Altıntaş on 14.03.2022.
//

import Foundation


class AnasayfaInteractor :PresenterToInteractorAnasayfaProtocol{
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    func tumYapilacaklariAl() {
       // anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: <#T##Array<Yapilacaklar>#>)
    }
    
    func yapilacakAra(aramaKelimesi: String) {
        print("Arama sonucu : \(aramaKelimesi)")
    }
    
    func yapilacakSil(yapilacak_id: Int) {
        print("\(yapilacak_id) silindi")
    }
    
    
}

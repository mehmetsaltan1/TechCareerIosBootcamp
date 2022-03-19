//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 14.03.2022.
//

import Foundation

class KisiKayitInteractor : PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        print("Kişi kayıt : \(kisi_ad) - \(kisi_tel)")
    }
}

//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 14.03.2022.
//

import Foundation

class KisiKayitInteractor : PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php")!
        var istek = URLRequest(url: url)
        istek.httpMethod = "POST"
        let postString = "kisi_ad=\(kisi_ad)&kisi_tel=\(kisi_tel)"
        istek.httpBody = postString.data(using: .utf8)
         URLSession.shared.dataTask(with: istek){ data,response,error in
             if error != nil || data == nil {
                 print("hata")
                 return
             }
             do {
                 if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:Any]{
                     print(json)
                 }
                 
             }catch {
                     
                 }
             
         }.resume()
    }
}

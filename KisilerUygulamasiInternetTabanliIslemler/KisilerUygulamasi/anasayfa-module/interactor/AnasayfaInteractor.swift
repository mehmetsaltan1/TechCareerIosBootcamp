//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 14.03.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumKisileriAl() {
       let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        URLSession.shared.dataTask(with: url){ data,response,error in
            if error != nil || data == nil {
                print("hata")
                return
            }
            do {
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                if let gelenListe = cevap.kisiler{
                    self.anasayfaPresenter?.preseneteraVeriGonder(kisilerListesi: gelenListe)
                }
                
            }catch {
                    
                }
            
        }.resume()
       // anasayfaPresenter?.preseneteraVeriGonder(kisilerListesi: liste)
    }
    
    func kisiAra(aramaKelimesi: String) {
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!
        var istek = URLRequest(url: url)
        istek.httpMethod = "POST"
        let postString = "kisi_ad=\(aramaKelimesi)"
        istek.httpBody = postString.data(using: .utf8)
         URLSession.shared.dataTask(with: istek){ data,response,error in
             if error != nil || data == nil {
                 print("hata")
                 return
             }
             do {
                 let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                 if let gelenListe = cevap.kisiler{
                     self.anasayfaPresenter?.preseneteraVeriGonder(kisilerListesi: gelenListe)
                 }
                 
             }catch {
                     
                 }
             
         }.resume()
    }
    
    func kisiSil(kisi_id: Int) {
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!
        var istek = URLRequest(url: url)
        istek.httpMethod = "POST"
        let postString = "kisi_id=\(kisi_id)"
        istek.httpBody = postString.data(using: .utf8)
         URLSession.shared.dataTask(with: istek){ data,response,error in
             if error != nil || data == nil {
                 print("hata")
                 return
             }
             do {
                 if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:Any]{
                     print(json)
                     self.tumKisileriAl() //Sildikten sonra arayüzü güncelleme işlemi
                 }
                 
             }catch {
                     
                 }
             
         }.resume()
    }

}

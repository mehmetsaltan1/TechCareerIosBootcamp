

import Foundation


class AnasayfaInteractor :PresenterToInteractorAnasayfaProtocol{
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    let db:FMDatabase?
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniUrl = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacak.sqlite")
        db = FMDatabase(path: veritabaniUrl.path)
    }
    func tumYapilacaklariAl() {
        var liste = [Yapilacaklar]()
        db?.open()
        do {
            let q = try db!.executeQuery("SELECT * FROM yapilacaklar", values: nil)
            while q.next() {
                let yapilacak_id = Int(q.string(forColumn: "yapilacak_id"))!
                let yapilacak_ad = q.string(forColumn: "yapilacak_ad")!
                let yapilacak = Yapilacaklar(yapilacak_id: yapilacak_id, yapilacak_ad: yapilacak_ad)
                liste.append(yapilacak)
            }
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{}
        db?.close()
  
    }
    
    func yapilacakAra(aramaKelimesi: String) {
        var liste = [Yapilacaklar]()
        db?.open()
        do {
            let q = try db!.executeQuery("SELECT * FROM yapilacaklar WHERE yapilacak_ad like '%\(aramaKelimesi)%'", values: nil)
            while q.next() {
                let yapilacak_id = Int(q.string(forColumn: "yapilacak_id"))!
                let yapilacak_ad = q.string(forColumn: "yapilacak_ad")!
                let yapilacak = Yapilacaklar(yapilacak_id: yapilacak_id, yapilacak_ad: yapilacak_ad)
                liste.append(yapilacak)
            }
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{}
        db?.close()
       
    }
    
    func yapilacakSil(yapilacak_id: Int) {
        db?.open()
        
        db?.close()
        print("\(yapilacak_id) silindi")
    }
    
    
}

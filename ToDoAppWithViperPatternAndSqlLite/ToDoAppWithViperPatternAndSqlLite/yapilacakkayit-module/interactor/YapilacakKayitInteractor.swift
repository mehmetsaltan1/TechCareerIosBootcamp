

import Foundation

class YapilacakKayitInteractor :PresenterToInteractorYapilacakKayitProtocol{
    let db:FMDatabase?
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniUrl = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacak.sqlite")
        db = FMDatabase(path: veritabaniUrl.path)
    }
    func yapilacakEkle(yapilacak_ad: String) {
        db?.open()
        do {
            try db?.executeUpdate("INSERT INTO yapilacaklar (yapilacak_ad) VALUES (?)", values: [yapilacak_ad])
         
        }catch{
        print("hata")
        }
        db?.close()
       
    }
    
    
}

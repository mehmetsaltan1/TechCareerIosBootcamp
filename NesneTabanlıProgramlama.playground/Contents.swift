import UIKit
import CoreGraphics

class Araba{
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("Araba sınıfından boş constructor ile nesne oluşturuldu")
    }
    
    init(renk:String,hiz:Int,calisiyorMu:Bool){
        self.renk = renk //Shadowing
        self.hiz = hiz  //Self -> this, super: üst sınıfı temsil eder(Kalıtım)
        self.calisiyorMu = calisiyorMu
        print("Araba sınıfından dolu constructor ile nesne oluşturuldu")
    }
    func calistir(){
        calisiyorMu = true // Side effect
        hiz = 5
    }
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    func bilgiAl(){
        print("******************************************")
        print("Renk : \(renk!)")
        print("Hız : \(hiz!)")
        print("Çalışıyor mu : \(calisiyorMu!)")

    }
}
var bmw = Araba(renk: "Kırmızı", hiz: 100, calisiyorMu: true)

//Değer Atama
//bmw.renk = "Kırmızı"
//bmw.hiz = 100
//bmw.calisiyorMu = true

// Değer Okuma
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()

var limuzin = Araba(renk: "Beyaz", hiz: 0, calisiyorMu: false)

//limuzin.renk = "Beyaz"
//limuzin.hiz = 0
//limuzin.calisiyorMu = false

limuzin.bilgiAl()
limuzin.calistir()
limuzin.bilgiAl()
limuzin.hizlan(kacKm: 50)
limuzin.bilgiAl()
limuzin.yavasla(kacKm: 21)
limuzin.bilgiAl()

//Fonksiyonlar
func selamla(){
    let sonuc = "Merhaba Ahmet"
    print(sonuc)
}
selamla()

func selamla1() -> String{
    let sonuc = "Merhaba Ahmet"
    
    return sonuc
}
var gelenSonuc = selamla1()
print("Gelen Sonuç : \(gelenSonuc)")

func selamla2(isim:String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}
selamla2(isim: "Mehmet")

func toplama(sayi1:Int,sayi2:Int) -> Int{
    let toplam = sayi1 + sayi2
    return toplam
    
}
var gelenToplam = toplama(sayi1: 10, sayi2: 20)
print("Gelen Toplam : \(gelenToplam)")

//Overloading

class Hesaplayici{
    func topla(sayi1:Int,sayi2:Int){
        print("Toplam : \(sayi1+sayi2)")
    }
    func topla(sayi1:Double,sayi2:Int){
        print("Toplam : \(sayi1+Double(sayi2))")
    }
    func topla(sayi1:Double,sayi2:Double){
        print("Toplam : \(sayi1+sayi2)")
    }
    func topla(sayi1:Int,sayi2:Int,ad:String){
        print("Toplam : \(sayi1+sayi2) , işlemi yapan \(ad)")
    }
}
var h = Hesaplayici()
h.topla(sayi1: 30, sayi2: 40, ad: "Ahmet")

//Static

class Asinifi{
  static  var x = 10
    
   static func metod(){
        print("Metod çalıştı")
    }
}
print(Asinifi.x)
Asinifi.metod()

enum KonserveBoyut{
    case Kucuk
    case Orta
    case Buyuk
}

func ucretHesapla(adet:Int,boyut:KonserveBoyut){
    switch boyut {
    case KonserveBoyut.Kucuk:
        print("Fiyat : \(adet*10) ₺")
    case KonserveBoyut.Orta:
        print("Fiyat : \(adet*40) ₺")
    case KonserveBoyut.Buyuk:
        print("Fiyat : \(adet*70) ₺")
    }
}
ucretHesapla(adet: 100, boyut: KonserveBoyut.Orta)

//Composition - Bir sınıfın içinde başka bir sınıfın nesnesini kullanma
class Kategoriler{
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
    
}
class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler){
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}
var k = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
var y = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quentin Tarantino")
var f = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k, yonetmen: y)
print("Film id : \(f.film_id!)")
print("Film Ad : \(f.film_ad!)")
print("Film Yıl : \(f.film_yil!)")
print("Film Kategori : \(f.kategori!.kategori_ad!)")
print("Film Yonetmen : \(f.yonetmen!.yonetmen_ad!)")

//Kalıtım

class Ev {
    var pencereSayisi:Int?
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
}
class Saray : Ev {
    var kuleSayisi:Int?
    init(kuleSayisi:Int,pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi:pencereSayisi )
    }
}
class Villa : Ev{
    var garajVarMi:Bool?
    init(garajVarMi:Bool,pencereSayisi:Int){
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi:pencereSayisi )
    }
}

var topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 30)
var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 10)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)
print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)

//Overriding

class Hayvan {
    func sesCikar(){
        print("Sesim Yok")
    }
}
class Memeli : Hayvan {
    
}
class Kedi : Memeli {
    override func sesCikar() {
        print("Miyav miyav")
    }
}
class Kopek : Memeli {
    override func sesCikar() {
        print("Hav hav")
    }
}
var hayvan = Hayvan()
var memeli = Memeli()
var kedi = Kedi()
var kopek = Kopek()
hayvan.sesCikar()
memeli.sesCikar()
kedi.sesCikar()
kopek.sesCikar()

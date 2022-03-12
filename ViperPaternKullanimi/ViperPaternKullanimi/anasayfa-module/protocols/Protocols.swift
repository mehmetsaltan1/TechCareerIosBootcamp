//
//  Protocols.swift
//  ViperPaternKullanimi
//
//  Created by Mehmet Saltan on 12.03.2022.
//

import Foundation

//Ana protocol
protocol ViewToPresenterProtocol{
    var interactor:PresenterToInteractorProtocol?{get set}
    var view:PresenterToViewProtocol?{get set}
    func toplamaYap(sayi1:String,sayi2:String)
    func carpmaYap(sayi1:String,sayi2:String)
}
//Ana protocol
protocol PresenterToInteractorProtocol{
    var presenter: InteractorToPresenterProtocol? {get set} //Neresi tetiklenecekse değişkenin ismi o olur
    func topla(sayi1:String,sayi2:String)
    func carp(sayi1:String,sayi2:String)
}
//Taşıyı protocol
protocol InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc:String)
}
//Taşıyı protocol
protocol PresenterToViewProtocol {
    func vieweVeriGonder(sonuc:String)
}

//Router Protocolu
protocol PresenterToRouterProtocol {
    static func createModule(ref:ViewController)
}

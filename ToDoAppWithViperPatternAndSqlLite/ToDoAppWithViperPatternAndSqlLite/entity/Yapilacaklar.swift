//
//  Yapilacaklar.swift
//  ToDoAppWithViperPatternAndSqlLite
//
//  Created by Mehmet Saltan on 20.03.2022.
//

import Foundation

class Yapilacaklar {
    var yapilacak_id:Int?
    var yapilacak_ad:String?
    
    init(){
        
    }
    
    init(yapilacak_id:Int,yapilacak_ad:String){
        self.yapilacak_id = yapilacak_id
        self.yapilacak_ad = yapilacak_ad
    }
}

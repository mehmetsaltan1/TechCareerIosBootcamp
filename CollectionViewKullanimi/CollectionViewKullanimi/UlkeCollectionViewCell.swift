//
//  UlkeCollectionViewCell.swift
//  CollectionViewKullanimi
//
//  Created by Mehmet Saltan on 7.03.2022.
//

import UIKit
protocol HucreProtocol {
    func buttonTiklandi(indexPath:IndexPath)
}
class UlkeCollectionViewCell: UICollectionViewCell {
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    @IBOutlet weak var ulkeLabel: UILabel!
    @IBAction func secButton(_ sender: Any) {
        hucreProtocol?.buttonTiklandi(indexPath: indexPath!)
    }
}

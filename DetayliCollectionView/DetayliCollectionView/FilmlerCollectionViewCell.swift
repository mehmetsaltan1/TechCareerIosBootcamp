//
//  FilmlerCollectionViewCell.swift
//  DetayliCollectionView
//
//  Created by Mehmet Saltan on 9.03.2022.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikla(indexPath:IndexPath)
}
class FilmlerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var filmImageView: UIImageView!
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    @IBAction func sepeteEkleButton(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath: indexPath!)
    }
}

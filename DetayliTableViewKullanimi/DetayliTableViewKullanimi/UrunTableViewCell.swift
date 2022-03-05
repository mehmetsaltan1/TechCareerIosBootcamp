//
//  UrunTableViewCell.swift
//  DetayliTableViewKullanimi
//
//  Created by Mehmet Saltan on 5.03.2022.
//

import UIKit

class UrunTableViewCell: UITableViewCell {

    @IBOutlet weak var urunAdLabel: UILabel!
    @IBOutlet weak var urunFiyatLabel: UILabel!
    @IBOutlet weak var hucreArkaPlan: UIView!
    @IBOutlet weak var urunResimImageView: UIImageView!
    @IBAction func sepeteEkleButton(_ sender: Any) {
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

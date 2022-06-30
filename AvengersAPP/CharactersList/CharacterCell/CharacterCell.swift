//
//  CharacterCellCollectionViewCell.swift
//  AvengersAPP
//
//  Created by Fran Alarza on 29/6/22.
//

import UIKit

class CharacterCell: UICollectionViewCell {
    
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterName: UILabel!
    
    func setCell(image: String, name: String) {
        characterImage.image = UIImage(named: image)
        characterName.text = name
    }
}

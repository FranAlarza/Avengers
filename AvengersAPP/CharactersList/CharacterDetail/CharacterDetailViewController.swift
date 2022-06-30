//
//  CharacterDetailViewController.swift
//  AvengersAPP
//
//  Created by Fran Alarza on 30/6/22.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    var characterImageDetail: String?
    var characterHeroDetail: String?
    var characterNameDetail: String?
    var actorNameDetail: String?
    
    
    
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterHeroName: UILabel!
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var actorName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterImage.image = UIImage(named: characterImageDetail ?? "placeholder")
        characterHeroName.text = characterHeroDetail
        characterName.text = characterNameDetail
    }
    

}

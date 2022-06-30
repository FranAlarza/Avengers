//
//  CharacterListViewControler.swift
//  AvengersAPP
//
//  Created by Fran Alarza on 29/6/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class CharacterListViewControler: UICollectionViewController {
    
    let names = ["Iron Man", "Green Linter", "Spiderman", "Hulk"]
    
    private var characters = [["characterHeroName": "Ant-Man", "characterName": "Scott Lang", "actorName": "Paul Rudd",                            "characterImage": "antmanCharacter"],
                              ["characterHeroName": "The Wasp", "characterName": "Hope Pym", "actorName": "Evangeline Lily", "characterImage": "waspCharacter"],
                              ["characterHeroName": "Scarlet Witch", "characterName": "Wanda Maximoff", "actorName": "Elizabeth Olsen", "characterImage": "scarletWitchCharacter"],
                              ["characterHeroName": "Captain America", "characterName": "Steve Rogers", "actorName": "Chris Evans", "characterImage": "captainAmericaCharacter"],
                              ["characterHeroName": "Captain Marvel", "characterName": "Carol Danvers", "actorName": "Brie Larson", "characterImage": "captainMarvelCharacter"],
                              ["characterHeroName": "Falcon", "characterName": "Sam Wilson", "actorName": "Anthony Mackie", "characterImage": "falconCharacter"],
                              ["characterHeroName": "Hulk", "characterName": "Bruce Banner", "actorName": "Mark Ruffalo", "characterImage": "hulkCharacter"],
                              ["characterHeroName": "Iron Man", "characterName": "Tony Stark", "actorName": "Robert Downey Jr.", "characterImage": "ironmanCharacter"],
                              ["characterHeroName": "Warmachine", "characterName": "James Rhodes", "actorName": "Don Cheadle", "characterImage": "warmachineCharacter"],
                              ["characterHeroName": "Hawkeye", "characterName": "Clint Barton", "actorName": "Jeremy Renner", "characterImage": "hawkeyeCharacter"],
                              ["characterHeroName": "Black Panther", "characterName": "T'Challa", "actorName": "Chadwick Boseman", "characterImage": "blackPantherCharacter"],
                              ["characterHeroName": "Spiderman", "characterName": "Peter Parker", "actorName": "Tom Holland", "characterImage": "spidermanCharacter"],
                              ["characterHeroName": "Thor", "characterName": "Thor Odinson", "actorName": "Chris Hemsworth", "characterImage": "thorCharacter"],
                              ["characterHeroName": "Vision", "characterName": "Vision", "actorName": "Paul Rudd", "characterImage": "visionCharacter"],
                              ["characterHeroName": "Black Widow", "characterName": "Natalia Romanoff", "actorName": "Scarlet Johansson", "characterImage": "blackWidowCharacter"],
                              ["characterHeroName": "Star Lord", "characterName": "Peter Quill", "actorName": "Chris Pratt", "characterImage": "starLordCharacter"],
                              ["characterHeroName": "Rocket", "characterName": "Rocket Racoon", "actorName": "Bradley Cooper", "characterImage": "rocketCharacter"],
                              ["characterHeroName": "Thanos", "characterName": "Thanos", "actorName": "Josh Brolin", "characterImage": "thanos2Character"]]
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CharacterDetailSegue" {
            let destination = segue.destination as? CharacterDetailViewController
            let characterName = sender as? String
            destination?.characterNameDetail = characterName
        }
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return characters.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let names = characters[indexPath.row]["characterHeroName"]
        performSegue(withIdentifier: "CharacterDetailSegue", sender: names)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CharacterCell else {
            return UICollectionViewCell()
        }
        let characterImage = characters[indexPath.row]["characterImage"] ?? ""
        let characterName = characters[indexPath.row]["characterHeroName"] ?? ""
        
        cell.setCell(image: characterImage, name: characterName)
        
        return cell
    }
    
    
    
}

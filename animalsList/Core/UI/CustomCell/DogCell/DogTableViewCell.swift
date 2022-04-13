//
//  DogTableViewCell.swift
//  animalsList
//
//  Created by Matias Palmieri on 11/04/2022.
//

import UIKit

class DogTableViewCell: UITableViewCell {

    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var dogName: UILabel!
    @IBOutlet weak var dogDescription: UILabel!
    @IBOutlet weak var dogAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCell(dog: Dog) {
        dogName.text = dog.dogName
        dogDescription.text = dog.description
        dogAge.text = dog.age
        
//        if let filePath = Bundle.main.path(forResource: "imageName", ofType: "jpg"), let image = UIImage(contentsOfFile: dog.url!) {
//            dogImage.contentMode = .scaleAspectFit
//            dogImage.image = image
//        }
    }
    
    func setDataCell(name: String, description: String, age: String, url: String) {
        dogName.text = name
//        dogDescription.text = description
//        dogAge.text = age
        
//        if let filePath = Bundle.main.path(forResource: "imageName", ofType: "jpg"), let image = UIImage(contentsOfFile: url) {
//            dogImage.contentMode = .scaleAspectFit
//            dogImage.image = image
//        }
    }
    
}

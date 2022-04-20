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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCell(dog: Dog) {
        dogName?.text = dog.dogName
        dogDescription?.text = dog.description
        dogAge?.text = dog.age
        
        if let url = URL(string: dog.url) {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil else { return }
                DispatchQueue.main.async {
                    self.dogImage?.image = UIImage(data: data)
                }
            }
            task.resume()
        }
    }
}

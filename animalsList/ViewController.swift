//
//  HomeViewController.swift
//  animalsList
//
//  Created by Matias Palmieri on 11/04/2022.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let tableViewData = Array(repeating: "Item", count: 5)
    var arrayData = [Dog(dogName: "Kimba", description: "manchitas alto", age: "3", url: "https://cdni.russiatoday.com/actualidad/public_images/2019.04/article/5ca865b308f3d9f63a8b4567.jpg"),
                     Dog(dogName: "pepe", description: "caniche toy", age: "7", url: "https://tvazteca.brightspotcdn.com/46/eb/e062739846539fd349f11d75c03d/por-que-tu-perrito-inclina-la-cabeza.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        tableView.register(UINib(nibName: "DogTableViewCell", bundle: nil), forCellReuseIdentifier: "DogTableViewCell")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DogTableViewCell", for: indexPath) as? DogTableViewCell {
            let a = arrayData[indexPath.row]
            cell.setCell(dog: a)
            return cell
        }
        return UITableViewCell()
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

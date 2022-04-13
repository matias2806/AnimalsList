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
    var arrayData = [Dog(dogName: "Kimba", description: "manchitas alto", age: "3", url: "http://www.cuentoscortos.com/imagenes/935.jpg"),
                     Dog(dogName: "pepe", description: "caniche toy", age: "7", url: "http://www.cuentoscortos.com/imagenes/935.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        tableView.register(UINib(nibName: "DogTableViewCell", bundle: nil), forCellReuseIdentifier: "DogTableViewCell")
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DogTableViewCell")
//        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DogTableViewCell", for: indexPath) as? DogTableViewCell {
            let a = arrayData[indexPath.row]
            cell.setDataCell(name: a.dogName!, description: a.description!, age: a.age!, url: a.url!)
            return cell
        }
        return UITableViewCell()
    }
    
}

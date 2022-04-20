//
//  Dog.swift
//  animalsList
//
//  Created by Matias Palmieri on 11/04/2022.
//

import Foundation

struct Dog: Codable {
    var dogName: String
    let description: String
    var age: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case dogName
        case description
        case age
        case url
    }
}

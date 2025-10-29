//
//  Model.swift
//  Desafio 09
//
//  Created by Turma01-10 on 29/10/25.
//

import Foundation

struct HaPo: Decodable, Identifiable{
    let id : String
    let name : String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let hairColour: String?
    let wand: Wand
    let patronus: String?
    let hogwartsStudent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternate_actors: [String]?
    let alive: Bool?
    let image: String?
}

struct Wand: Codable{
    let wood: String?
    let core: String?
    let length: Double?
}

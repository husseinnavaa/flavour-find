//
//  Recipe.swift
//  flavour-find
//
//  Created by Macbook on 2026-03-02.
//

import Foundation

struct Recipe: Identifiable, Codable {
    let id = UUID()
    var name: String
    var description: String
    var ingredients: [String]
    var steps: [String]
    var imageName: String  // Nom de l'image dans Assets (ou URL plus tard)
    var isFavorite: Bool
    var cookingTime: Int   // en minutes
}

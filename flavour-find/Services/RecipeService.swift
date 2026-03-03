//
//  RecipeService.swift
//  flavour-find
//
//  Protocole pour l'accès aux données (permet de switcher entre statique et API).
//
//  Created by Macbook on 2026-03-02.
//

import Foundation

protocol RecipeService {
    func fetchRecipes() async throws -> [Recipe]
}

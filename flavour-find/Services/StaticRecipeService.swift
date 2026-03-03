//
//  StaticRecipeService.swift
//  flavour-find
//
//  Service fournissant des données statiques (pour le projet).
//
//  Created by Macbook on 2026-03-02.
//

import Foundation

class StaticRecipeService: RecipeService {
    func fetchRecipes() async throws -> [Recipe] {
        // Simule un délai réseau (optionnel, pour tester les states de chargement)
        try await Task.sleep(nanoseconds: 500_000_000) // 0.5 sec
        
        return [
            Recipe(
                name: "Pâtes carbonara",
                description: "Un classique italien crémeux sans crème.",
                ingredients: ["Pâtes", "Œufs", "Pecorino", "Lardons", "Poivre"],
                steps: ["Faire cuire les pâtes", "Mélanger œufs et fromage", "Cuire les lardons", "Mélanger le tout hors du feu"],
                imageName: "pasta",
                isFavorite: false,
                cookingTime: 20
            ),
            Recipe(
                name: "Salade César",
                description: "Salade fraîche avec poulet grillé et sauce César.",
                ingredients: ["Laitue", "Poulet", "Parmesan", "Croûtons", "Sauce César"],
                steps: ["Laver la laitue", "Griller le poulet", "Mélanger tous les ingrédients", "Ajouter la sauce"],
                imageName: "salad",
                isFavorite: true,
                cookingTime: 15
            ),
            Recipe(
                name: "Tarte aux pommes",
                description: "Dessert traditionnel français.",
                ingredients: ["Pâte brisée", "Pommes", "Sucre", "Beurre", "Cannelle"],
                steps: ["Étaler la pâte", "Peler et couper les pommes", "Disposer les pommes", "Cuire 30 min à 180°"],
                imageName: "applepie",
                isFavorite: false,
                cookingTime: 45
            )
        ]
    }
}

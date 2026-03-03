//
//  RecipesViewModel.swift
//  flavour-find
//
//  ViewModel principal gérant la liste des recettes.
//  ObservableObject pour SwiftUI.
//
//  Created by Macbook on 2026-03-03.
//

import SwiftUI
import Combine

@MainActor
class RecipesViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private let service: RecipeService
    
    // Injection de service (permet de changer facilement pour une API)
    init(service: RecipeService) {
        self.service = service
    }
    
    func loadRecipes() async {
        isLoading = true
        errorMessage = nil
        do {
            recipes = try await service.fetchRecipes()
        } catch {
            errorMessage = "Erreur de chargement : \(error.localizedDescription)"
        }
        isLoading = false
    }
    
    // MARK: - Actions utilisateur
    
    func toggleFavorite(for recipe: Recipe) {
        guard let index = recipes.firstIndex(where: { $0.id == recipe.id }) else { return }
        recipes[index].isFavorite.toggle()
    }
    
    func deleteRecipe(_ recipe: Recipe) {
        recipes.removeAll { $0.id == recipe.id }
    }
    
    // Pour le tri (exemple de fonctionnalité supplémentaire)
    func sortByName() {
        recipes.sort { $0.name < $1.name }
    }
}

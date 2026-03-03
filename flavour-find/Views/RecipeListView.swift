//
//  RecipeListView.swift
//  flavour-find
//
//  Vue principale avec la liste des recettes et navigation.
//
//  Created by Macbook on 2026-03-03.
//

import SwiftUI

struct RecipeListView: View {
    @StateObject private var viewModel = RecipesViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading {
                    ProgressView("Chargement des recettes...")
                } else if let error = viewModel.errorMessage {
                    VStack {
                        Text("Erreur").font(.headline)
                        Text(error).multilineTextAlignment(.center)
                        Button("Réessayer") {
                            Task { await viewModel.loadRecipes() }
                        }
                        .padding()
                    }
                } else {
                    List {
                        ForEach(viewModel.recipes) { recipe in
                            NavigationLink(destination: RecipeDetailView(recipe: recipe, viewModel: viewModel)) {
                                RecipeRow(recipe: recipe)
                            }
                            // Geste 1 : Swipe pour supprimer
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button(role: .destructive) {
                                    withAnimation {
                                        viewModel.deleteRecipe(recipe)
                                    }
                                } label: {
                                    Label("Supprimer", systemImage: "trash")
                                }
                            }
                            // Geste 2 : Swipe pour favori (depuis la gauche)
                            .swipeActions(edge: .leading) {
                                Button {
                                    withAnimation {
                                        viewModel.toggleFavorite(for: recipe)
                                    }
                                } label: {
                                    Label(recipe.isFavorite ? "Retirer favori" : "Ajouter favori",
                                          systemImage: recipe.isFavorite ? "heart.slash" : "heart")
                                }
                                .tint(.yellow)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Mes recettes")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        withAnimation {
                            viewModel.sortByName()
                        }
                    }) {
                        Image(systemName: "arrow.up.arrow.down")
                    }
                }
            }
            .task {
                await viewModel.loadRecipes()
            }
        }
    }
}

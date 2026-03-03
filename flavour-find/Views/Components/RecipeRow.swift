//
//  RecipeRow.swift
//  flavour-find
//
//  Vue d'une ligne dans la liste.
//
//  Created by Macbook on 2026-03-03.
//

import SwiftUI

struct RecipeRow: View {
    let recipe: Recipe
    
    var body: some View {
        HStack {
            // Image de la recette (placeholder si pas d'image)
            if UIImage(named: recipe.imageName) != nil {
                Image(recipe.imageName)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(8)
            } else {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "fork.knife")
                            .foregroundColor(.gray)
                    )
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(recipe.name)
                    .font(.headline)
                Text("\(recipe.cookingTime) min")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                if recipe.isFavorite {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .font(.caption)
                }
            }
            .padding(.leading, 4)
        }
        .padding(.vertical, 4)
    }
}

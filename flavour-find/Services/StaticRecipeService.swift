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
                imageName: "spaghetti-carbonara",
                isFavorite: false,
                cookingTime: 20
            ),
            Recipe(
                name: "Salade César",
                description: "Salade fraîche avec poulet grillé et sauce César.",
                ingredients: ["Laitue", "Poulet", "Parmesan", "Croûtons", "Sauce César"],
                steps: ["Laver la laitue", "Griller le poulet", "Mélanger tous les ingrédients", "Ajouter la sauce"],
                imageName: "salade-cesar",
                isFavorite: true,
                cookingTime: 15
            ),
            Recipe(
                name: "Tarte aux pommes",
                description: "Dessert traditionnel français.",
                ingredients: ["Pâte brisée", "Pommes", "Sucre", "Beurre", "Cannelle"],
                steps: ["Étaler la pâte", "Peler et couper les pommes", "Disposer les pommes", "Cuire 30 min à 180°"],
                imageName: "tarte-aux-pommes",
                isFavorite: false,
                cookingTime: 45
            ),
            Recipe(
                name: "Crêpes",
                description: "Fine pâte cuite à la poêle, typique de la cuisine française.",
                ingredients: ["Farine", "Œufs", "Lait", "Sucre", "Beurre", "Sel"],
                steps: [
                    "Mélanger la farine, le sucre et le sel",
                    "Ajouter les œufs",
                    "Verser le lait progressivement",
                    "Laisser reposer la pâte 30 minutes",
                    "Cuire les crêpes dans une poêle chaude"
                ],
                imageName: "crepes",
                isFavorite: false,
                cookingTime: 25
            ),
            Recipe(
                name: "Mousse au chocolat",
                description: "Dessert léger et aérien au chocolat.",
                ingredients: ["Chocolat noir", "Œufs", "Sucre", "Beurre"],
                steps: [
                    "Faire fondre le chocolat avec le beurre",
                    "Séparer les blancs des jaunes",
                    "Mélanger les jaunes avec le chocolat",
                    "Monter les blancs en neige",
                    "Incorporer délicatement et réfrigérer 2h"
                ],
                imageName: "mousse-au-chocolat",
                isFavorite: false,
                cookingTime: 20
            ),
            Recipe(
                name: "Ratatouille",
                description: "Plat traditionnel provençal à base de légumes mijotés.",
                ingredients: ["Aubergine", "Courgette", "Tomates", "Poivron", "Oignon", "Ail", "Huile d'olive", "Herbes de Provence"],
                steps: [
                    "Couper tous les légumes en rondelles ou en dés",
                    "Faire revenir l'oignon et l'ail dans l'huile d'olive",
                    "Ajouter les poivrons puis les aubergines",
                    "Ajouter les courgettes et les tomates",
                    "Laisser mijoter 30 minutes"
                ],
                imageName: "ratatouille",
                isFavorite: false,
                cookingTime: 50
            ),
            Recipe(
                name: "Poulet rôti",
                description: "Poulet croustillant au four avec herbes.",
                ingredients: ["Poulet entier", "Beurre", "Ail", "Thym", "Sel", "Poivre"],
                steps: [
                    "Préchauffer le four à 200°",
                    "Badigeonner le poulet de beurre",
                    "Ajouter l'ail et le thym",
                    "Assaisonner",
                    "Cuire environ 1h15"
                ],
                imageName: "poulet-roti",
                isFavorite: false,
                cookingTime: 75
            ),
            Recipe(
                name: "Burger maison",
                description: "Burger classique avec steak haché et fromage.",
                ingredients: ["Pain burger", "Steak haché", "Fromage cheddar", "Tomate", "Laitue", "Sauce burger"],
                steps: [
                    "Cuire le steak dans une poêle",
                    "Toaster les pains",
                    "Ajouter le fromage sur le steak",
                    "Assembler avec tomate et laitue",
                    "Ajouter la sauce"
                ],
                imageName: "burger-maison",
                isFavorite: false,
                cookingTime: 20
            ),
            Recipe(
                name: "Omelette au fromage",
                description: "Omelette rapide et fondante.",
                ingredients: ["Œufs", "Fromage râpé", "Beurre", "Sel", "Poivre"],
                steps: [
                    "Battre les œufs",
                    "Faire fondre le beurre dans la poêle",
                    "Verser les œufs",
                    "Ajouter le fromage",
                    "Plier l'omelette et servir"
                ],
                imageName: "omelette-au-fromage",
                isFavorite: false,
                cookingTime: 10
            ),
            Recipe(
                name: "Pancakes",
                description: "Petites crêpes épaisses parfaites pour le petit déjeuner.",
                ingredients: ["Farine", "Œufs", "Lait", "Sucre", "Levure chimique", "Beurre"],
                steps: [
                    "Mélanger farine, sucre et levure",
                    "Ajouter les œufs et le lait",
                    "Mélanger jusqu'à obtenir une pâte lisse",
                    "Cuire dans une poêle beurrée",
                    "Retourner quand des bulles apparaissent"
                ],
                imageName: "pancakes",
                isFavorite: false,
                cookingTime: 15
            ),
            
        ]
    }
}

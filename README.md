# 🍽️ FlavourFind – iOS Recipe App

**FlavourFind** is an iOS recipe application developed in **SwiftUI** as part of an academic project.
The goal of this project is to demonstrate practical **iOS development skills** and modern **SwiftUI architecture patterns**.

## 📱 Project Overview

This application showcases several important iOS development concepts:

* **User Interface**: Building responsive and adaptive layouts with **SwiftUI**.
* **Navigation**: Using `NavigationStack` to move between a recipe list and a detailed view.
* **Custom Gestures**: Implementing swipe actions (delete, favorite) in the list and a **double-tap gesture** on the image to toggle favorite status.
* **Context Menus**: Providing quick actions (favorite, share, delete) using `.contextMenu`.
* **MVVM Architecture**: Clear separation between **Views**, **Models**, and **ViewModels** using `ObservableObject`.
* **Well-structured Code**: Organized folders (`Models`, `Views`, `ViewModels`, `Services`) with comments explaining key logic.

The application currently uses a **static data source**, but its architecture (through a `RecipeService` protocol) makes it easy to integrate a **real API in the future**.

## ✨ Features

* 🍲 List of recipes with images, cooking time, and favorite indicator
* 🔎 Navigation to a detailed view for each recipe
* 👉 Swipe left/right to delete or mark a recipe as favorite
* ❤️ Double-tap the image in the detail view to toggle favorite
* 📋 Context menu with share and delete actions
* 🔤 Alphabetical sorting of recipes
* ⏳ Loading and error state handling

## 🛠 Technologies Used

* **SwiftUI**
* **Combine** (via `@Published`)
* **MVVM Architecture**
* **Git** (incremental commit history)

## 👨‍💻 Author

Project created by **El Houssein Navaa**.

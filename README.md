# flavour-find** is an iOS recipe application developed in SwiftUI as part of a academic project.  
It focuses on demonstrating practical iOS development skills including:

- **User Interface**: Building responsive and adaptive layouts with SwiftUI.
- **Navigation**: Using `NavigationStack` to transition between a list and a detail view.
- **Custom Gestures**: Implementing swipe actions (delete, favorite) in the list and a double tap on the image to toggle favorite status.
- **Context Menus**: Providing quick actions (favorite, share, delete) via `.contextMenu`.
- **MVVM Architecture**: Clear separation between Views, Models, and ViewModels using `ObservableObject`.
- **Well‑structured code**: Organized folders (Models, Views, ViewModels, Services) and comments explaining key logic.

The app currently uses a static data source, but its architecture (through a `RecipeService` protocol) makes it easy to switch to a real API later.

## ✨ Features

- List of recipes with images, cooking time, and favorite indicator
- Navigation to a detailed view for each recipe
- Swipe left/right to delete or mark as favorite
- Double tap on the image in the detail view to toggle favorite
- Context menu with share and delete actions
- Alphabetical sorting of recipes
- Loading and error state handling

## 🛠 Technologies Used

- SwiftUI
- Combine (via `@Published`)
- MVVM Architecture
- Git (incremental commit history)

## 👨‍💻 Author

Project created by El Houssein Navaa.

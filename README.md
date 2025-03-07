# Crypto Hub

A Flutter application built with Clean Architecture, featuring secure authentication, cryptocurrency management, and user profile functionalities. The app supports light and dark themes, unit/widget tests for key components, and secure token storage.

https://github.com/user-attachments/assets/768643c9-2153-4c1d-b974-1bd691faef77

## Features

### Authentication (`auth`)
- **Login**: Secure user authentication with token management.

### Home (`home`)
Contains four sub-modules for cryptocurrency management:
- Fetch and display a list of currencies.
- Add currencies to favorites.
- Remove currencies from favorites.
- Retrieve and display the user’s favorite currencies.

### Profile (`profile`)
- Fetch and display user details.
- Register or update the user’s phone number.

## Project Overview

The app is organized using Clean Architecture with three main layers:
- **Presentation**: UI and state management.
- **Domain**: Business logic, entities, and use cases.
- **Data**: API calls and local storage.

Key directories include:
- `lib/core/` - Shared utilities and dependency injection.
- `lib/features/` - Feature modules (`auth`, `home`, `profile`).
- `lib/presentation/` - Light and dark theme configurations.
- `test/` - Unit and widget tests.

## Technologies

The project leverages modern Flutter tools and libraries:
- **State Management**: `flutter_bloc` for reactive UI updates.
- **Networking**: `dio` for API requests.
- **Navigation**: `go_router` for routing.
- **Dependency Injection**: `get_it` for service locator.
- **Security**: `flutter_secure_storage` for secure token storage.
- **Functional Programming**: `dartz` for error handling (e.g., `Either`).
- **Code Generation**: `freezed` and `json_serializable` for immutable data and serialization.
- **Testing**: `bloc_test`, `mocktail`, and `mockito` for unit and widget tests.
- **UI Enhancements**: `flutter_svg` for SVG rendering and `shimmer` for loading effects.

## Installation & Setup

### 1️⃣ Clone the repository
```sh
git clone <repository-url>
cd crypto_hub
```

### 2️⃣ Install dependencies
```sh
flutter pub get
```

### 3️⃣ Generate necessary files
Run the following command to generate necessary files using `build_runner`:
```sh
dart run build_runner build
```

### 4️⃣ Run the app
Use this command to launch the application on a connected device or emulator:
```sh
flutter run
```

## Flutter & Dart Version
Uses:
```plaintext
Flutter 3.29.0 (stable) • Dart 3.7.0

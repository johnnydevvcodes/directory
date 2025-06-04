# Directory App

<img src="https://github.com/user-attachments/assets/41c422ae-1b1b-4528-8fca-d603bcbe62e5" width="375" height="812"/>

A clean architecture Flutter app to view and manage directory data.

## Features
- Fetches fresh data from a local JSON data source (`assets/data/my_directory.json`).
- Displays directory statistics and recent transactions.
- Modern, modular, and testable codebase.

## Architecture
This app follows a strict **feature-first clean architecture**:

- **Presentation Layer**: UI, screens, widgets, and state management (Cubit/Bloc). Located in `lib/features/dashboard/presentation/`.
- **Domain Layer**: Business logic, use cases, and entities. Located in `lib/features/dashboard/domain/`.
- **Data Layer**: Data sources, repositories, models, and services. Located in `lib/features/dashboard/data/`.

### State Management
- Uses `flutter_bloc` and Cubit for state management.
- UI reacts to all possible states: loading, data, and error.

### Dependency Injection
- Uses `flutter_modular` for dependency injection and routing.
- All dependencies are provided in `lib/app_module.dart`.

### Data Source
- All data is loaded from `assets/data/my_directory.json`.
- SVG icons are loaded from the `assets/` directory.

## Best Practices
- Strongly typed models and entities.
- No use of `any` or dynamic types.
- One export per file.
- Follows SOLID and clean code principles.
- All features are modular and testable.
- Unit and widget tests included for Cubit and UI.

## Getting Started
1. Run `flutter pub get` to install dependencies.
2. Ensure the following in your `pubspec.yaml`:
   ```yaml
   flutter:
     assets:
       - assets/data/my_directory.json
       - assets/plantations.svg
       - assets/cp.svg
       - assets/transport.svg
       - assets/doc.svg
   ```
3. Run the app: `flutter run`

## Testing
- Run all tests with: `flutter test`

---

**Directory App** is designed for maintainability, scalability, and clean code. Contributions and suggestions are welcome!

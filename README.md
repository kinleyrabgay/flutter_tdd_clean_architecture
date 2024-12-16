# Flutter Clean Architecture with BLoC

Welcome to the **Flutter Clean Architecture TDD App**! 🚀 This project is a demonstration of clean architecture principles applied to Flutter development, using **Test-Driven Development (TDD)** and **BLoC** for state management. The app includes a **Home**, **Onboarding**, and **Login** screen, showcasing a robust, scalable, and maintainable architecture.

## 🎯 Features

- **Home Screen**: A simple, responsive design with basic navigation.
- **Onboarding Screen**: Interactive onboarding flow for first-time users.
- **Login Screen**: Secure user authentication with email and password.
- **Clean Architecture**: Separation of concerns using distinct layers (Presentation, Domain, and Data).
- **State Management**: Implemented with **BLoC** for predictable state handling.
- **Test-Driven Development**: Unit tests for core features ensure reliability and maintainability.

## 🛠️ Tech Stack

### Core Technologies
- **Flutter**: Cross-platform app development.
- **Dart**: Programming language for Flutter.
- **BLoC**: Business Logic Component for state management.
- **Clean Architecture**: Modular and scalable application structure.

### Tools & Libraries
- **Dio**: HTTP client for API integration.
- **Mocktail**: Mocking library for unit tests.
- **Flutter Test**: Built-in testing framework.
- **Equatable**: Simplifies value equality checks.

## 📂 Project Structure

This project is organized according to **Clean Architecture** principles:

```
lib/
├── core/
│   ├── api/
│   │   └── v1/            # API endpoints and configurations
│   ├── commons/
│   │   ├── widgets/       # Reusable UI components
│   │   └── pages/         # Common page templates
│   ├── constants/         # App-wide constant values
│   ├── errors/            # Custom exceptions and error handling
│   ├── injections/        # Dependency injection setup
│   ├── loader/            # Loading utilities
│   ├── routes/            # App navigation routing
│   ├── stores/            # State management stores
│   ├── themes/            # App theming and styling
│   ├── types/             # Common typedefs and utility types
│   ├── usecases/          # Core application use cases
│   └── utils/             # Utility functions and helpers
├── features/
│   ├── authentication/
│   │   ├── data/
│   │   │   ├── datasource/  # Data sources (remote/local)
│   │   │   ├── models/      # Models specific to authentication
│   │   │   └── repositories # Authentication data repository implementations
│   │   ├── domain/
│   │   │   ├── entities/    # Authentication-specific entities
│   │   │   ├── repository/  # Authentication domain repository interfaces
│   │   │   └── usecases/    # Authentication business logic
│   │   └── presentation/
│   │       ├── bloc/        # Authentication BLoC
│   │       ├── widgets/     # Authentication-specific widgets
│   │       └── screens/     # Authentication UI screens
│   ├── home/
│   │   ├── data/
│   │   │   ├── datasource/  # Data sources for home feature
│   │   │   ├── models/      # Models specific to home
│   │   │   └── repositories # Home data repository implementations
│   │   ├── domain/
│   │   │   ├── entities/    # Home-specific entities
│   │   │   ├── repository/  # Home domain repository interfaces
│   │   │   └── usecases/    # Home feature business logic
│   │   └── presentation/
│   │       ├── bloc/        # Home feature BLoC
│   │       ├── widgets/     # Home-specific widgets
│   │       └── screens/     # Home UI screens
│   └── onboarding/
│       ├── data/
│       │   ├── datasource/  # Data sources for onboarding
│       │   ├── models/      # Models specific to onboarding
│       │   └── repositories # Onboarding data repository implementations
│       ├── domain/
│       │   ├── entities/    # Onboarding-specific entities
│       │   ├── repository/  # Onboarding domain repository interfaces
│       │   └── usecases/    # Onboarding business logic
│       └── presentation/
│           ├── bloc/        # Onboarding BLoC
│           ├── widgets/     # Onboarding-specific widgets
│           └── screens/     # Onboarding UI screens
```


## 🚀 Getting Started

### Prerequisites
- **Flutter SDK**: Install the latest version from [Flutter's website](https://flutter.dev/docs/get-started/install).
- **Dart**: Ensure Dart is installed (bundled with Flutter).
- **Code Editor**: Use [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flutter-clean-architecture-tdd.git
   cd flutter-clean-architecture-tdd
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run tests to verify the setup:
   ```bash
   flutter test
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## 🧪 Testing

This project uses TDD (Test-Driven Development) to ensure code quality. Tests are divided into:
- Unit Tests: For use cases and core business logic.
- Widget Tests: For UI validation.
- Integration Tests: For end-to-end flows.

Run all tests:
```bash
flutter test
```

## 💡 Key Concepts

1. **Clean Architecture Layers**
   - **Presentation**: Contains the UI (widgets) and state management (BLoC).
   - **Domain**: Houses the business logic, including use cases and entities.
   - **Data**: Responsible for API calls and data persistence.

2. **BLoC State Management**
   - Separation of events and states.
   - Ensures a unidirectional data flow for maintainable and testable code.

3. **TDD Workflow**
   - Write a failing test.
   - Implement the minimal code to pass the test.
   - Refactor the code for maintainability.

## 📱 Screenshots

*Home Screen*

*Onboarding Screen*

*Login Screen*

## 🙌 Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your message"
   ```
4. Push to your branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Submit a pull request.

## 📄 License

This project is licensed under the MIT License.

## 🙏 Acknowledgments

- Inspired by Uncle Bob's Clean Architecture principles.
- Thanks to the Flutter community for their amazing resources and support.
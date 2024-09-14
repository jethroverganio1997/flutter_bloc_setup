# Project Architecture
In a **`Vertical slice architecture`** for Flutter, the idea is to organize your code by features rather than by layers (like separating data, domain, and presentation). 
## 1. Folder Structure
 Each feature has its own data, domain, and presentation layers, making the feature self-contained.
```
lib/
├── features/
│   ├── authentication/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   ├── repositories/
│   │   │   └── data_sources/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── use_cases/
│   │   │   └── repositories/
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── pages/
│   │       └── widgets/
│   ├── dashboard/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── ...
├── common/
│   ├── widgets/
│   ├── services/
│   ├── themes/
│   └── ...
```

## 2. Feature Slice
Each feature slice contains:

- `Data Layer`: Includes data sources, repositories, and models related to the feature. This is where you manage APIs, database, and other forms of persistent storage.
- `Domain Layer`: Includes business logic, entities, and use cases. This layer should be independent of the presentation and data layers.
- `Presentation Layer`: Contains UI components, state management (e.g., Bloc, Provider, etc.), and widgets for the specific feature.

## 3. Layer Responsibilities
- `Data Layer`: Responsible for interacting with external data sources (APIs, local databases). This layer holds repositories and data sources.
- `Domain Layer`: Handles the business logic. It typically contains:
Entities: Objects that represent core data in your application.
Use Cases: Classes or functions that execute specific tasks (e.g., fetching user data).
Interfaces: Contracts for repositories that can be implemented in the data layer.
- `Presentation Layer`: Manages UI-related concerns. This can include Bloc or Cubit for state management, along with the UI widgets like pages and custom components.

## 4. Common Folder Structure
```
├── common/
│   ├── constants/           // Global constants
│   ├── cubit/               // Global state management
│   ├── di/                  // Global dependency injection
│   ├── exceptions/          // Global exception handling
│   ├── extensions/          // Global extensions
│   ├── helpers/             // Global utility functions
│   ├── routing/             // App-wide routing
│   ├── services/            // Global services (e.g., API, logging)
│   └── theme/               // Global themes
```
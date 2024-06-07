# TuFind

TuFind is an innovative app designed to help students find the perfect tutor. Using a unique bidding mechanism, the price for tutoring services is determined dynamically, ensuring fair pricing and a competitive market. The app features a user-friendly frontend built with Flutter and a robust backend developed using Golang.

## Feature

- **Dynamic Pricing**: Price is determined by bid offer which allows student to rent a tutor at an affordable rate. 

## Tech Stack

- **Frontend**: Flutter
- **Backend**: Golang

## Installation

### Prerequisites

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Golang: [Installation Guide](https://golang.org/doc/install)
- XAMPP: [Installation Guide](https://www.apachefriends.org/download.html)

### Setup

1. **Clone the repository**
    ```sh
    git clone https://github.com/felixjhonata/tufind.git
    cd tutorfinder
    ```

2. **Setup Flutter**
    ```sh
    cd tufind-frontend
    flutter pub get
    flutter run
    ```

3. **Setup Golang Backend**
    ```sh
    cd Tufind-Backend
    go mod tidy
    go run main.go
    ```

## Usage

1. Open the app on your device/emulator.
2. Create an account as a student.
3. Bid to rent a tutor as a student.
4. Review your bids at the Transaction History Page.


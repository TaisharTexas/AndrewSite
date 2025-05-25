# mysite

## Working Commands
To update live site:
1) flutter build web
2) firebase deploy
may need to user flutter clean before building

To run localhost in chrome:
1) flutter run  -d chrome


## Setup Commands
Need Flutter and Dart SDK:
1) Download [latest version of flutter](https://docs.flutter.dev/get-started/install/macos/web)
2) Move to development folder 
3) need to verify that the PATH in zshrc is correct:
   1) open: nano ~/.zshrc
   2) check for path: export PATH=$HOME/development/flutter/bin:$PATH
   3) close: ^X
   4) restart terminal to apply changes
4) Use flutter doctor in terminal to verify install
5) May need to point android studio to dart SDK loc: 
   1) use flutter doctor -v to get verbose output and dart sdk location 
   2) for me it was: /Users/andrew/development/flutter/bin/cache/dart-sdk


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# mysite
[using this tutorial](https://youtu.be/UOTwRXAh6VY?si=RxkiuWWbZCAfV3Wp)
taishar.net

## Working Commands
To update live site:
1) flutter build web
2) firebase deploy
   may need to user "flutter clean" before building
   if firebase isnt initialized may need to do that*
   check logged in with "firebase login"

To run localhost in chrome:
1) flutter run  -d chrome

* Init Firebase:
1) firebase init hosting
2) public (use default for public dir)
      will need to go into firebase.json afterwards and change public from "public" to "build/web"
3) y (single page app)
4) n (auto update from git)

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
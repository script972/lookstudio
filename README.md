start project first time
1. Upgrade build runner flutter upgrade build_runner
2. brew install FlutterGen/tap/fluttergen
3. Generate linked assets resources  dart pub global activate flutter_gen
4. generate annotations flutter packages pub run build_runner build
5. specify the path to generate "fluttergen -c pubspec.yaml" 
6. Put away conflicting dependencies "flutter packages pub run build_runner build --delete-conflicting-outputs"


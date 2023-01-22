# Screen Corners

## The easiest way to get your screen's border radius

<img src="https://raw.githubusercontent.com/alekangelov/screen_corners/main/screenshot.png">

### How to

Add this to your main.dart

```dart
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await screenCorners.initScreenCorners();
    runApp(const ScreenCornersApp());
  }
```

and then voila

```dart
  SomeWidget(
    borderRadius: screenCorners.value
  )
```

## Fin

No idea if I can explain it any better than that

www.alekangelov.com

# Screen Corners

## The easiest way to get your screen's border radius

# NOTE: ONLY WORKING ON IOS CURRNETLY!

<img src="https://raw.githubusercontent.com/alekangelov/screen_corners/main/screenshot.png">

### How to

Add this to your main.dart

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenCorners.initScreenCorners();
  runApp(const ScreenCornersApp());
}
```

and then voila

```dart
SomeWidget(
  borderRadius: ScreenCorners.corner.value
)
```

## Fin

No idea if I can explain it any better than that

www.alekangelov.com

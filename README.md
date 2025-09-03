# 🎯 progress_bar_rounded

A **customizable rounded progress bar widget** for Flutter with smooth animations, multiple themes, and flexible child widget support.

[![pub package](https://img.shields.io/pub/v/progress_bar_rounded.svg)](https://pub.dev/packages/progress_bar_rounded)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg)](https://flutter.dev)

---

## ✨ Features

- 🎨 **Fully Customizable** - Colors, heights, borders, and animations
- ⚡ **Smooth Animations** - Configurable duration with `AnimatedContainer`
- 🔄 **Bidirectional Progress** - Support for left-to-right and right-to-left progress
- 🧩 **Flexible Child Widgets** - Add content to left, right, and center positions
- 🎭 **Multiple Themes** - Built-in color schemes with dark variants
- 📱 **Responsive Design** - Adapts to different screen sizes
- 🚀 **Lightweight** - Minimal dependencies, optimized performance
- 🧪 **Well Tested** - Comprehensive test coverage

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  progress_bar_rounded: ^1.0.1
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Quick Start

```dart
import 'package:flutter/material.dart';
import 'package:progress_bar_rounded/progress_bar.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoundedProgressBar(
      percent: 75,
      height: 40,
      color: Colors.blue,
      backgroundColor: Colors.grey[300]!,
      childCenter: Text(
        "75%",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
```

---

## 🎨 Basic Usage

### Simple Progress Bar

```dart
RoundedProgressBar(
  percent: 65,
  height: 30,
  color: Colors.green,
  backgroundColor: Colors.grey[200]!,
)
```

### With Custom Styling

```dart
RoundedProgressBar(
  percent: 80,
  height: 50,
  color: Colors.purple,
  backgroundColor: Colors.grey[100]!,
  borderRadius: BorderRadius.circular(25),
  milliseconds: 800,
  margin: EdgeInsets.symmetric(horizontal: 20),
)
```

### With Child Widgets

```dart
RoundedProgressBar(
  percent: 45,
  height: 45,
  color: Colors.orange,
  backgroundColor: Colors.grey[300]!,
  childCenter: Text(
    "45%",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  ),
  childLeft: Icon(Icons.check_circle, color: Colors.white),
  childRight: Icon(Icons.flag, color: Colors.white),
  paddingChildLeft: EdgeInsets.all(12),
  paddingChildRight: EdgeInsets.all(12),
)
```

### Reverse Progress Direction

```dart
RoundedProgressBar(
  percent: 70,
  height: 35,
  color: Colors.red,
  backgroundColor: Colors.grey[200]!,
  reverse: true, // Progress fills from right to left
  childCenter: Text("Reverse 70%", style: TextStyle(color: Colors.white)),
)
```

---

## 🔧 API Reference

### RoundedProgressBar Properties

| Property            | Type                       | Default                     | Description                        |
| ------------------- | -------------------------- | --------------------------- | ---------------------------------- |
| `percent`           | `double`                   | `40`                        | Progress percentage (0.0 - 100.0)  |
| `height`            | `double`                   | `50`                        | Height of the progress bar         |
| `color`             | `Color`                    | **Required**                | Color of the progress indicator    |
| `backgroundColor`   | `Color`                    | **Required**                | Background color of the bar        |
| `style`             | `RoundedProgressBarStyle?` | `null`                      | Custom styling object              |
| `margin`            | `EdgeInsetsGeometry?`      | `null`                      | Outer margin of the widget         |
| `borderRadius`      | `BorderRadiusGeometry?`    | `BorderRadius.circular(12)` | Corner radius                      |
| `milliseconds`      | `int`                      | `500`                       | Animation duration in milliseconds |
| `reverse`           | `bool`                     | `false`                     | Reverse progress direction         |
| `childCenter`       | `Widget?`                  | `null`                      | Widget displayed at center         |
| `childLeft`         | `Widget?`                  | `null`                      | Widget displayed on left side      |
| `childRight`        | `Widget?`                  | `null`                      | Widget displayed on right side     |
| `paddingChildLeft`  | `EdgeInsetsGeometry?`      | `EdgeInsets.all(16)`        | Left child padding                 |
| `paddingChildRight` | `EdgeInsetsGeometry?`      | `EdgeInsets.all(16)`        | Right child padding                |

### RoundedProgressBarStyle Properties

| Property              | Type     | Default             | Description                 |
| --------------------- | -------- | ------------------- | --------------------------- |
| `backgroundProgress`  | `Color`  | `Color(0xFFBBDEFB)` | Background progress color   |
| `colorProgress`       | `Color`  | `Color(0xFF42A5F5)` | Main progress color         |
| `colorProgressDark`   | `Color`  | `Color(0xFF2980b9)` | Dark progress color variant |
| `colorBorder`         | `Color`  | `Color(0xFFEEEEEE)` | Border color                |
| `colorBackgroundIcon` | `Color`  | `Color(0xFFEEEEEE)` | Icon background color       |
| `borderWidth`         | `double` | `6`                 | Border width                |
| `widthShadow`         | `double` | `6`                 | Shadow width                |

---

## 🎭 Built-in Themes

The package includes predefined color schemes:

```dart
// Blue theme (default)
RoundedProgressBar(
  style: RoundedProgressBarStyle(
    backgroundProgress: backgroundProgressDefault,
    colorProgress: colorProgressBlue,
    colorProgressDark: colorProgressBlueDark,
  ),
)

// Green theme
RoundedProgressBar(
  style: RoundedProgressBarStyle(
    colorProgress: colorProgressGreen,
    colorProgressDark: colorProgressGreenDark,
  ),
)

// Red theme
RoundedProgressBar(
  style: RoundedProgressBarStyle(
    colorProgress: colorProgressRed,
    colorProgressDark: colorProgressRedDark,
  ),
)

// Purple theme
RoundedProgressBar(
  style: RoundedProgressBarStyle(
    colorProgress: colorProgressPurple,
    colorProgressDark: colorProgressPurpleDark,
  ),
)

// Yellow theme
RoundedProgressBar(
  style: RoundedProgressBarStyle(
    colorProgress: colorProgressYellow,
    colorProgressDark: colorProgressYellowDark,
  ),
)

// Midnight theme
RoundedProgressBar(
  style: RoundedProgressBarStyle(
    colorProgress: colorProgressMidnight,
    colorProgressDark: colorProgressMidnightDark,
  ),
)
```

---

## 📱 Examples

### File Upload Progress

```dart
RoundedProgressBar(
  percent: uploadProgress,
  height: 40,
  color: Colors.blue,
  backgroundColor: Colors.grey[200]!,
  childCenter: Text(
    "${uploadProgress.toInt()}%",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  ),
  childLeft: Icon(Icons.upload_file, color: Colors.white),
  childRight: Icon(Icons.check_circle, color: Colors.white),
)
```

### Task Completion

```dart
RoundedProgressBar(
  percent: completedTasks / totalTasks * 100,
  height: 35,
  color: Colors.green,
  backgroundColor: Colors.grey[300]!,
  childCenter: Text(
    "${completedTasks}/$totalTasks",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
  ),
  childLeft: Icon(Icons.task_alt, color: Colors.white),
)
```

### Loading State

```dart
RoundedProgressBar(
  percent: loadingProgress,
  height: 25,
  color: Colors.orange,
  backgroundColor: Colors.grey[100]!,
  milliseconds: 300,
  childCenter: Text(
    "Loading...",
    style: TextStyle(color: Colors.orange, fontSize: 12),
  ),
)
```

---

## 🧪 Testing

Run the test suite:

```bash
flutter test
```

---

## 🤝 Contributing

We welcome contributions! Please feel free to submit issues and pull requests.

### Development Setup

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- Built with ❤️ using Flutter
- Inspired by modern UI/UX design principles
- Special thanks to the Flutter community

---

## 📞 Support

- 📧 **Issues**: [GitHub Issues](https://github.com/AnshRajput/progress-bar/issues)
- 📖 **Documentation**: [API Reference](https://pub.dev/documentation/progress_bar_rounded)
- 🐦 **Twitter**: [@yourusername](https://twitter.com/yourusername)

---

**Made with Flutter ❤️**

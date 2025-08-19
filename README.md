# 🎯 progress_bar_rounded

A **customizable rounded progress bar widget** for Flutter.  
Easily add beautiful animated progress bars with rounded edges, colors, and child widgets inside.

---

## 🚀 Features

- 🎨 Fully customizable colors and styles  
- ⏱️ Smooth **animated progress** with custom duration  
- 🔄 Supports **reverse progress direction**  
- 🧩 Add child widgets inside: left, right, and center  
- 📐 Customizable height, margin, padding, and border radius  
- ⚡ Lightweight and easy to use  

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  progress_bar_rounded: ^1.0.0
Then run:


flutter pub get
🔧 Usage Example

import 'package:flutter/material.dart';
import 'package:progress_bar_rounded/progress_bar_rounded.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: RoundedProgressBar(
          percent: 65, // progress %
          height: 40,
          color: Colors.green, // progress color
          backgroundColor: Colors.grey[300]!, // background color
          borderRadius: BorderRadius.circular(20),
          milliseconds: 600,
          childCenter: Text(
            "65%",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          childLeft: Icon(Icons.check, color: Colors.white),
          childRight: Icon(Icons.flag, color: Colors.white),
        ),
      ),
    );
  }
}
🎨 Customization Options
Property	Type	Default	Description
percent	double	40	Progress percentage (0–100).
height	double	50	Height of the progress bar.
color	Color	Required	Color of the progress indicator.
backgroundColor	Color	Required	Background color of the bar.
margin	EdgeInsetsGeometry?	null	Outer margin of the widget.
paddingChildLeft	EdgeInsetsGeometry?	16	Padding for left child.
paddingChildRight	EdgeInsetsGeometry?	16	Padding for right child.
childCenter	Widget?	null	Widget shown at the center.
childLeft	Widget?	null	Widget shown on the left side.
childRight	Widget?	null	Widget shown on the right side.
reverse	bool	false	Reverse direction of progress.
milliseconds	int	500	Animation duration.
borderRadius	BorderRadius?	12	Rounded corner radius.

💡 Example with Reverse Progress
RoundedProgressBar(
  percent: 75,
  height: 30,
  color: Colors.red,
  backgroundColor: Colors.black12,
  reverse: true, // progress fills from right to left
  childCenter: Text("Reverse 75%", style: TextStyle(color: Colors.white)),
)
🛠️ Contribution
Contributions are welcome! 🎉
If you’d like to add features or fix bugs, feel free to open a PR.

📜 License
MIT License © 2025 Ansh Gandharva

✨ Made with Flutter ❤️

# 📊 Super Rating

A Flutter widget to display a beautiful summary of product ratings and average reviews.

---

## 🖼 Screenshots

| With Average Indicator | Without Average Indicator |
|------------------------|---------------------------|
| ![Average](https://github.com/ioom0/super_rating/blob/main/assets/readme/rating_summary_average.png?raw=true) | ![No Average](https://github.com/ioom0/super_rating/blob/main/assets/readme/rating_summary.png?raw=true) |

---

## 🔧 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  super_rating: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Usage

```dart
import 'package:super_rating/super_rating.dart';

const SuperRating(
  average: 3.846,
  showAverage: true,
  counterFiveStars: 5,
  counterFourStars: 4,
  counterThreeStars: 2,
  counterTwoStars: 1,
  counterOneStars: 1,
)
```

---

## 🛠 Parameters

| Parameter                | Type        | Default                                                 | Description                                         |
|--------------------------|-------------|----------------------------------------------------------|-----------------------------------------------------|
| `average`                | `double`    | `0.0`                                                    | The average rating.                                |
| `showAverage`            | `bool`      | `true`                                                   | Whether to show average rating section.            |
| `showTextAverage`        | `bool`      | `true`                                                   | Whether to show average rating as text.            |
| `averageStyle`           | `TextStyle` | `TextStyle(fontWeight: FontWeight.bold, fontSize: 40)`   | Style of average text.                             |
| `counterFiveStars`       | `int`       | `0`                                                      | Number of 5-star ratings.                          |
| `counterFourStars`       | `int`       | `0`                                                      | Number of 4-star ratings.                          |
| `counterThreeStars`      | `int`       | `0`                                                      | Number of 3-star ratings.                          |
| `counterTwoStars`        | `int`       | `0`                                                      | Number of 2-star ratings.                          |
| `counterOneStars`        | `int`       | `0`                                                      | Number of 1-star ratings.                          |
| `labelCounterFiveStars`  | `Widget`    | `Text('5', style: ...)`                                  | Label for 5-star.                                  |
| `labelCounterFourStars`  | `Widget`    | `Text('4', style: ...)`                                  | Label for 4-star.                                  |
| `labelCounterThreeStars` | `Widget`    | `Text('3', style: ...)`                                  | Label for 3-star.                                  |
| `labelCounterTwoStars`   | `Widget`    | `Text('2', style: ...)`                                  | Label for 2-star.                                  |
| `labelCounterOneStars`   | `Widget`    | `Text('1', style: ...)`                                  | Label for 1-star.                                  |
| `label`                  | `String`    | `"Ratings"`                                              | Label under the stars section.                    |
| `labelStyle`             | `TextStyle` | `TextStyle(fontWeight: FontWeight.w600)`                 | Style of `label`.                                 |
| `color`                  | `Color`     | `Colors.amber`                                           | Primary color for progress bars.                  |
| `backgroundColor`        | `Color`     | `Color(0xFFEEEEEE)`                                      | Background color of progress bars.                |
| `space`                  | `double`    | `20`                                                     | Space between label and bar.                      |
| `thickness`              | `double`    | `10`                                                     | Height of the progress bars.                      |
| `starColor`              | `Color`     | `Colors.amber`                                           | Color of star icons.                              |
| `alignment`              | `CrossAxisAlignment` | `CrossAxisAlignment.center`                      | Alignment of content inside rating summary.       |

---

## 💡 Tip

To ensure best performance, use the widget inside scrollable or lazy-loaded content like `ListView`.

---

## 📄 License

MIT License

---

Ready to make your app ratings shine 🌟? Use **Super Rating** today!

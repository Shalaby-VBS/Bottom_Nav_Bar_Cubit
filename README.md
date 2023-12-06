# <div align="center">⚡️ Button Nav Bar Cubit ⚡️</div>


## 🚀 Getting Started

- This Flutter repo that demonstrates a Bottom Navigation Bar implementation using Cubit for state management, Iconly for icon assets, and Google Fonts for text styling. This package simplifies the process of creating a dynamic and visually appealing bottom navigation bar with the flexibility to switch between different screens.


## 🎲 Features

- **Cubit for State Management:** Leverage the power of Cubit to manage the state of the bottom navigation bar.

- **Iconly for Icon Assets:** Utilize the Iconly package for a beautiful set of icons that seamlessly integrate into your app.

- **Google Fonts for Text Styling:** Enhance the text styling in the bottom navigation bar using Google Fonts.

- **Customizable and Responsive:** Easily customize the appearance and behavior of the bottom navigation bar to suit your app's design and ensure responsiveness.


## ⚙️ Customization

- Customize the appearance and behavior of the clipboard according to your requirements:

1- **BottomNavBarCubit:**
```dart
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarCubit extends Cubit<int> {
  BottomNavBarCubit() : super(0);

  changeSelectedIndex(newIndex) => emit(newIndex);
}
```
2- **Wrapper Body:**
```dart
PageView _buildBody() {
  return PageView(
    onPageChanged: (int page) => onPageChanged(page),
    controller: pageController,
    children: screens,
  );
}
```

3- **Bottom Nav Bar:**
```dart
BottomAppBar _bottomNavBar(BuildContext context) {
  return BottomAppBar(
    color: Colors.white,
    height: MediaQuery.of(context).size.height * 0.083,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildSingleNavBarBottom(
          context,
          defaultIcon: IconlyLight.home,
          page: 0,
          label: "Home",
          filledIcon: IconlyBold.home,
        ),
        _buildSingleNavBarBottom(
          context,
          defaultIcon: IconlyLight.heart,
          page: 1,
          label: "Favorite",
          filledIcon: IconlyBold.heart,
        ),
        _buildSingleNavBarBottom(
          context,
          defaultIcon: IconlyLight.notification,
          page: 2,
          label: "Notifications",
          filledIcon: IconlyBold.notification,
        ),
        _buildSingleNavBarBottom(
          context,
          defaultIcon: IconlyLight.profile,
          page: 3,
          label: "Profile",
          filledIcon: IconlyBold.profile,
        ),
      ],
    ),
  );
}
```

## 📱 UI

![BottomNavBarCubit](https://github.com/Shalaby-VBS/Bottom_Nav_Bar_Cubit/assets/149938388/e146bef9-05b5-4fb1-ac69-21509cd6bb2a)

## 🛠 Dependencies

```yaml
  cupertino_icons: ^1.0.2
  iconly: ^1.0.1
  google_fonts: ^6.1.0
  flutter_bloc: ^8.1.3
```

## 🫴 Contributing

- Contributions are welcome 💜
- If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## 💳 License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/Shalaby-VBS/Bottom_Nav_Bar_Cubit)
- This package is distributed under the MIT License. Feel free to use and modify it according to your project requirements.

## 🤝 Contact With Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmed-shalaby-21196521b/) 
[![Gmail](https://img.shields.io/badge/Gmail-333333?style=for-the-badge&logo=gmail&logoColor=red)](https://www.shalaby.vbs@gmail.com)
[![Facebook](https://img.shields.io/badge/Facebook-0077B5?style=for-the-badge&logo=facebook&logoColor=white)](https://www.facebook.com/profile.php?id=100093012790432&mibextid=hIlR13)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/sh4l4by/)

</div>

## 💖 Support

- If you find this tutorial useful or learned something from this code, consider show some ❤️ by starring this repo.

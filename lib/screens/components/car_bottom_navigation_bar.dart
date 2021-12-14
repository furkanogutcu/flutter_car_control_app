import 'package:flutter/material.dart';
import 'package:flutter_car_control_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarBottomNavigationBar extends StatelessWidget {
  const CarBottomNavigationBar({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);

  final int selectedTab;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedTab,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: List.generate(
        navIconSources.length,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
            navIconSources[index],
            color: index == selectedTab ? primaryColor : Colors.white54,
          ),
          label: "",
        ),
      ),
    );
  }
}

List<String> navIconSources = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg",
];

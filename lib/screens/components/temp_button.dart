import 'package:flutter/material.dart';
import 'package:flutter_car_control_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TempButton extends StatelessWidget {
  const TempButton({
    Key? key,
    required this.svgSource,
    required this.title,
    this.isActive = false,
    required this.press,
    this.activeColor = primaryColor,
  }) : super(key: key);

  final String svgSource, title;
  final bool isActive;
  final VoidCallback press;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOutBack,
            height: isActive ? 76 : 50,
            width: isActive ? 76 : 50,
            child: SvgPicture.asset(
              svgSource,
              color: isActive ? this.activeColor : Colors.white38,
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 200),
            style: TextStyle(
                fontSize: 16,
                color: isActive ? this.activeColor : Colors.white38,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            child: Text(title.toUpperCase()),
          )
        ],
      ),
    );
  }
}

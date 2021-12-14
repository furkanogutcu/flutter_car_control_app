import 'package:flutter/material.dart';
import 'package:flutter_car_control_app/constants.dart';

class BatteryStatus extends StatelessWidget {
  const BatteryStatus({
    Key? key,
    required this.constrains,
  }) : super(key: key);

  final BoxConstraints constrains;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "220 mi",
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white),
        ),
        Text(
          "%54",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        Text(
          "CHARGING",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "23 min remaining",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: constrains.maxHeight * 0.14,
        ),
        DefaultTextStyle(
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("22 mi/hr"),
                Text("232V"),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}

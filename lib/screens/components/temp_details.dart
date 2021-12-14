import 'package:flutter/material.dart';
import 'package:flutter_car_control_app/constants.dart';
import 'package:flutter_car_control_app/home_controller.dart';
import 'package:flutter_car_control_app/screens/components/temp_button.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({
    Key? key,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempButton(
                  isActive: _controller.isCoolSelected,
                  svgSource: "assets/icons/coolShape.svg",
                  title: "COOL",
                  press: _controller.updateCoolSelectedTab,
                ),
                const SizedBox(width: defaultPadding),
                TempButton(
                  isActive: !_controller.isCoolSelected,
                  svgSource: "assets/icons/heatShape.svg",
                  title: "HEAT",
                  activeColor: redColor,
                  press: _controller.updateCoolSelectedTab,
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  _controller.isCoolSelected
                      ? _controller.updateCarCoolTemperature(
                          _controller.carCoolTemperature + 1)
                      : _controller.updateCarHotTemperature(
                          _controller.carHotTemperature + 1);
                },
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 48,
                ),
              ),
              Text(
                _controller.isCoolSelected
                    ? _controller.carCoolTemperature.toString() + "\u2103"
                    : _controller.carHotTemperature.toString() + "\u2103",
                style: TextStyle(fontSize: 86),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  _controller.isCoolSelected
                      ? _controller.updateCarCoolTemperature(
                          _controller.carCoolTemperature - 1)
                      : _controller.updateCarHotTemperature(
                          _controller.carHotTemperature - 1);
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 48,
                ),
              ),
            ],
          ),
          Spacer(),
          Text("CURRENT TEMPERATURE"),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("INSIDE"),
                  Text(
                    "20" + "\u2103",
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              const SizedBox(width: defaultPadding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OUTSIDE",
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    "35" + "\u2103",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white54),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

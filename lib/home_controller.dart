import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedBottomTab = 0;

  void onBottomNavigationTabChange(int index) {
    this.selectedBottomTab = index;
    notifyListeners();
  }

  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isTrunkLock = true;

  void updateRightDoorLock() {
    this.isRightDoorLock = !this.isRightDoorLock;
    notifyListeners();
  }

  void updateLeftDoorLock() {
    this.isLeftDoorLock = !this.isLeftDoorLock;
    notifyListeners();
  }

  void updateBonnetLock() {
    this.isBonnetLock = !this.isBonnetLock;
    notifyListeners();
  }

  void updateTrunkLock() {
    this.isTrunkLock = !this.isTrunkLock;
    notifyListeners();
  }
}

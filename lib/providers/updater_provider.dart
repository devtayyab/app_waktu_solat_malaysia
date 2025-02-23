import 'package:flutter/cupertino.dart';

class UpdaterProvider with ChangeNotifier {
  bool _needForUpdate = false;

  set needForUpdate(bool value) {
    _needForUpdate = value;
    notifyListeners();
  }

  bool get needForUpdate => _needForUpdate;
}

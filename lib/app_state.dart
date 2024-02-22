import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _name = prefs.getString('ff_name') ?? _name;
    });
    _safeInit(() {
      _DayscholarHostler =
          prefs.getString('ff_DayscholarHostler') ?? _DayscholarHostler;
    });
    _safeInit(() {
      _ChooseHostel = prefs.getString('ff_ChooseHostel') ?? _ChooseHostel;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
    prefs.setString('ff_name', value);
  }

  double _sum = 0.0;
  double get sum => _sum;
  set sum(double value) {
    _sum = value;
  }

  String _DayscholarHostler = '';
  String get DayscholarHostler => _DayscholarHostler;
  set DayscholarHostler(String value) {
    _DayscholarHostler = value;
    prefs.setString('ff_DayscholarHostler', value);
  }

  String _ChooseHostel = '';
  String get ChooseHostel => _ChooseHostel;
  set ChooseHostel(String value) {
    _ChooseHostel = value;
    prefs.setString('ff_ChooseHostel', value);
  }

  bool _emailverifylottie = false;
  bool get emailverifylottie => _emailverifylottie;
  set emailverifylottie(bool value) {
    _emailverifylottie = value;
  }

  bool _VerifyEmailAddress = false;
  bool get VerifyEmailAddress => _VerifyEmailAddress;
  set VerifyEmailAddress(bool value) {
    _VerifyEmailAddress = value;
  }

  bool _BTNstatus = false;
  bool get BTNstatus => _BTNstatus;
  set BTNstatus(bool value) {
    _BTNstatus = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

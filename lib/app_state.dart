import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
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

  String _DayscholarHostler = 'Day Scholar';
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

  List<CartItemTypeStruct> _cart = [];
  List<CartItemTypeStruct> get cart => _cart;
  set cart(List<CartItemTypeStruct> value) {
    _cart = value;
  }

  void addToCart(CartItemTypeStruct value) {
    _cart.add(value);
  }

  void removeFromCart(CartItemTypeStruct value) {
    _cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    _cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    CartItemTypeStruct Function(CartItemTypeStruct) updateFn,
  ) {
    _cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, CartItemTypeStruct value) {
    _cart.insert(index, value);
  }

  double _cartSum = 0.0;
  double get cartSum => _cartSum;
  set cartSum(double value) {
    _cartSum = value;
  }

  int _numberOfItemsinCart = 0;
  int get numberOfItemsinCart => _numberOfItemsinCart;
  set numberOfItemsinCart(int value) {
    _numberOfItemsinCart = value;
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

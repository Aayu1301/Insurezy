import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _authToken = prefs.getString('ff_authToken') ?? _authToken;
    if (prefs.containsKey('ff_result')) {
      try {
        _result = jsonDecode(prefs.getString('ff_result') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _error = prefs.getString('ff_error') ?? _error;
    _vis = prefs.getString('ff_vis') ?? _vis;
  }

  late SharedPreferences prefs;

  String _authToken = '';
  String get authToken => _authToken;
  set authToken(String _value) {
    _authToken = _value;
    prefs.setString('ff_authToken', _value);
  }

  dynamic _result;
  dynamic get result => _result;
  set result(dynamic _value) {
    _result = _value;
    prefs.setString('ff_result', jsonEncode(_value));
  }

  String _error = '';
  String get error => _error;
  set error(String _value) {
    _error = _value;
    prefs.setString('ff_error', _value);
  }

  String image = 'https://img.icons8.com/officel/30/000000/test-account.png';

  String _vis = 'true';
  String get vis => _vis;
  set vis(String _value) {
    _vis = _value;
    prefs.setString('ff_vis', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _singleUser = '/ff_push_notifications/i92TJFxz7HiVSVsKyvbL';
  String get singleUser => _singleUser;
  set singleUser(String _value) {
    _singleUser = _value;
  }

  dynamic _distributorprofiledata;
  dynamic get distributorprofiledata => _distributorprofiledata;
  set distributorprofiledata(dynamic _value) {
    _distributorprofiledata = _value;
  }

  dynamic _donarDetails;
  dynamic get donarDetails => _donarDetails;
  set donarDetails(dynamic _value) {
    _donarDetails = _value;
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

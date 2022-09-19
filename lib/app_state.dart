import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

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
    _updateUser4ADDINGchat =
        prefs.getBool('ff_updateUser4ADDINGchat') ?? _updateUser4ADDINGchat;
  }

  late SharedPreferences prefs;

  DocumentReference? videoAFTERpurchase;

  bool subscribed = false;

  bool _updateUser4ADDINGchat = true;
  bool get updateUser4ADDINGchat => _updateUser4ADDINGchat;
  set updateUser4ADDINGchat(bool _value) {
    _updateUser4ADDINGchat = _value;
    prefs.setBool('ff_updateUser4ADDINGchat', _value);
  }

  bool agree2TandC = true;

  bool giveConsent = true;

  String syllabus = 'caps';

  DocumentReference? selectedSubject =
      FirebaseFirestore.instance.doc('/subjects/UsmViqkkPgkSYgGloTAh');

  DocumentReference? selectedPaper =
      FirebaseFirestore.instance.doc('/papers/ZFtWkJ2xBw7eAhxBOlcu');
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

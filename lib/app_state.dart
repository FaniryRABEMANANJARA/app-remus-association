import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _recentSearch = prefs.getStringList('ff_recentSearch') ?? _recentSearch;
    });
    _safeInit(() {
      _SelectedValues = prefs
              .getStringList('ff_SelectedValues')
              ?.map((path) => path.ref)
              .toList() ??
          _SelectedValues;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  bool _searchActive2 = false;
  bool get searchActive2 => _searchActive2;
  set searchActive2(bool _value) {
    _searchActive2 = _value;
  }

  List<String> _recentSearch = [];
  List<String> get recentSearch => _recentSearch;
  set recentSearch(List<String> _value) {
    _recentSearch = _value;
    prefs.setStringList('ff_recentSearch', _value);
  }

  void addToRecentSearch(String _value) {
    _recentSearch.add(_value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void removeFromRecentSearch(String _value) {
    _recentSearch.remove(_value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void removeAtIndexFromRecentSearch(int _index) {
    _recentSearch.removeAt(_index);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void updateRecentSearchAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _recentSearch[_index] = updateFn(_recentSearch[_index]);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void insertAtIndexInRecentSearch(int _index, String _value) {
    _recentSearch.insert(_index, _value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  List<DocumentReference> _DropdownValue = [];
  List<DocumentReference> get DropdownValue => _DropdownValue;
  set DropdownValue(List<DocumentReference> _value) {
    _DropdownValue = _value;
  }

  void addToDropdownValue(DocumentReference _value) {
    _DropdownValue.add(_value);
  }

  void removeFromDropdownValue(DocumentReference _value) {
    _DropdownValue.remove(_value);
  }

  void removeAtIndexFromDropdownValue(int _index) {
    _DropdownValue.removeAt(_index);
  }

  void updateDropdownValueAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _DropdownValue[_index] = updateFn(_DropdownValue[_index]);
  }

  void insertAtIndexInDropdownValue(int _index, DocumentReference _value) {
    _DropdownValue.insert(_index, _value);
  }

  List<DocumentReference> _SelectedValues = [];
  List<DocumentReference> get SelectedValues => _SelectedValues;
  set SelectedValues(List<DocumentReference> _value) {
    _SelectedValues = _value;
    prefs.setStringList(
        'ff_SelectedValues', _value.map((x) => x.path).toList());
  }

  void addToSelectedValues(DocumentReference _value) {
    _SelectedValues.add(_value);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
  }

  void removeFromSelectedValues(DocumentReference _value) {
    _SelectedValues.remove(_value);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
  }

  void removeAtIndexFromSelectedValues(int _index) {
    _SelectedValues.removeAt(_index);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
  }

  void updateSelectedValuesAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _SelectedValues[_index] = updateFn(_SelectedValues[_index]);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
  }

  void insertAtIndexInSelectedValues(int _index, DocumentReference _value) {
    _SelectedValues.insert(_index, _value);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
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

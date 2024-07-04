import 'package:flutter/material.dart';
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
  set searchActive(bool value) {
    _searchActive = value;
  }

  bool _searchActive2 = false;
  bool get searchActive2 => _searchActive2;
  set searchActive2(bool value) {
    _searchActive2 = value;
  }

  List<String> _recentSearch = [];
  List<String> get recentSearch => _recentSearch;
  set recentSearch(List<String> value) {
    _recentSearch = value;
    prefs.setStringList('ff_recentSearch', value);
  }

  void addToRecentSearch(String value) {
    recentSearch.add(value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void removeFromRecentSearch(String value) {
    recentSearch.remove(value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void removeAtIndexFromRecentSearch(int index) {
    recentSearch.removeAt(index);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void updateRecentSearchAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    recentSearch[index] = updateFn(_recentSearch[index]);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void insertAtIndexInRecentSearch(int index, String value) {
    recentSearch.insert(index, value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  List<DocumentReference> _DropdownValue = [];
  List<DocumentReference> get DropdownValue => _DropdownValue;
  set DropdownValue(List<DocumentReference> value) {
    _DropdownValue = value;
  }

  void addToDropdownValue(DocumentReference value) {
    DropdownValue.add(value);
  }

  void removeFromDropdownValue(DocumentReference value) {
    DropdownValue.remove(value);
  }

  void removeAtIndexFromDropdownValue(int index) {
    DropdownValue.removeAt(index);
  }

  void updateDropdownValueAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    DropdownValue[index] = updateFn(_DropdownValue[index]);
  }

  void insertAtIndexInDropdownValue(int index, DocumentReference value) {
    DropdownValue.insert(index, value);
  }

  List<DocumentReference> _SelectedValues = [];
  List<DocumentReference> get SelectedValues => _SelectedValues;
  set SelectedValues(List<DocumentReference> value) {
    _SelectedValues = value;
    prefs.setStringList('ff_SelectedValues', value.map((x) => x.path).toList());
  }

  void addToSelectedValues(DocumentReference value) {
    SelectedValues.add(value);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
  }

  void removeFromSelectedValues(DocumentReference value) {
    SelectedValues.remove(value);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
  }

  void removeAtIndexFromSelectedValues(int index) {
    SelectedValues.removeAt(index);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
  }

  void updateSelectedValuesAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    SelectedValues[index] = updateFn(_SelectedValues[index]);
    prefs.setStringList(
        'ff_SelectedValues', _SelectedValues.map((x) => x.path).toList());
  }

  void insertAtIndexInSelectedValues(int index, DocumentReference value) {
    SelectedValues.insert(index, value);
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

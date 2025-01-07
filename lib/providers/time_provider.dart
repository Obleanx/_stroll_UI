import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

/// Provider class to manage the time state for the Stroll Bonfire screen
class TimeProvider extends ChangeNotifier {
  String _currentTime = '';

  // Getter for the current time
  String get currentTime => _currentTime;

  // Constructor initializes time and sets up periodic updates
  TimeProvider() {
    _updateTime();
    // Update time every minute
    Stream.periodic(const Duration(minutes: 1)).listen((_) => _updateTime());
  }

  // Private method to update the time
  void _updateTime() {
    _currentTime = DateFormat('hh:mm a').format(DateTime.now());
    notifyListeners();
  }
}

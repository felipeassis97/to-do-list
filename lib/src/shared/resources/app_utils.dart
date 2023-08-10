import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime combineDateTime(DateTime date, TimeOfDay time) {
  final timeOfDay =
      DateTime(date.year, date.month, date.day, time.hour, time.minute);
  return timeOfDay;
}

String formatDateTime(DateTime dateTime) {
  final DateFormat formatter = DateFormat('MM/dd/yyyy HH:mm');
  return formatter.format(dateTime);
}

String formatDate(DateTime dateTime) {
  final DateFormat formatter = DateFormat('MM/dd/yyyy');
  return formatter.format(dateTime);
}

String formatTime(DateTime dateTime) {
  final DateFormat formatter = DateFormat('HH:mm');
  return formatter.format(dateTime);
}

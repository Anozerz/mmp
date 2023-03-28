import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

List<DateTime> getFormattedDaysList(List<DateTime> daysList) {
  // Erstellt ein DateFormat-Objekt mit dem gewünschten Format (yMd)
  DateFormat dateFormat = DateFormat.yMd();

  // Formatieren der DateTime-Objekte in der Liste und Speichern als Liste von Strings
  List<String> formattedDaysList =
      daysList.map((date) => dateFormat.format(date)).toList();

  // Entfernen von Duplikaten aus der Liste der formatierten Strings
  List<String> uniqueFormattedDaysList = formattedDaysList.toSet().toList();

  // Konvertieren der formatierten Strings zurück in DateTime-Objekte
  List<DateTime> uniqueDaysList = uniqueFormattedDaysList.map((dateStr) {
    DateTime parsedDate = dateFormat.parse(dateStr);
    // Setzt die Uhrzeit zurück, da DateFormat.yMd keine Zeitinformationen enthält
    return DateTime(parsedDate.year, parsedDate.month, parsedDate.day);
  }).toList();

  return uniqueDaysList;
}

DateTime? getDayStart(DateTime? dayDate) {
  // get the start of the day
  if (dayDate == null) {
    return null;
  }
  return DateTime(dayDate.year, dayDate.month, dayDate.day);
}

DateTime? getDayEnd(DateTime? dayDate) {
  // get end of the day
  // get the end of the day
  if (dayDate == null) {
    return null;
  }
  return DateTime(
      dayDate.year, dayDate.month, dayDate.day, 23, 59, 59, 999, 999);
}

int getJournalEntriesTotal(List<bool>? journalEntriesCheck) {
  if (journalEntriesCheck == null) {
    return 0;
  }
  int total = 0;
  for (bool entry in journalEntriesCheck) {
    if (entry) {
      total += 1;
    }
  }
  return total;
}

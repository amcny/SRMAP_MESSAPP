import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';

String? day() {
  // create a code that displays It's day name
  var now = new DateTime.now();
  var formatter = new DateFormat('EEEE');
  String formatted = formatter.format(now);
  return "It's $formatted";
}

String? wishes() {
  // create me a code that shows good morning, good afternoon, good evening according to the time
  var now = new DateTime.now();
  var formatter = new DateFormat('HH');
  String formatted = formatter.format(now);
  int hour = int.parse(formatted);
  if (hour < 12) {
    return 'Good Morning, ';
  } else if (hour < 16) {
    return 'Good Afternoon, ';
  } else {
    return 'Good Evening, ';
  }
}

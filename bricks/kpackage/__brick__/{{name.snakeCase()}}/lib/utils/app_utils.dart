import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:{{name.snakeCase()}}/data/preferences_data.dart';
import 'package:{{name.snakeCase()}}/native_bridge/flutter_method_channel.dart';
import 'package:{{name.snakeCase()}}/navigation/navigation_service.dart';
import 'package:{{name.snakeCase()}}/router/route_screen.dart';


class AppUtils {

  static String getDate(String timestamp) {
    // var date = new DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
    var date = DateTime.parse(timestamp);
    var formatDate = DateFormat('dd MMM yy').format(date);
    return formatDate;
  }

  static String getDateWithYear(String timestamp) {
    // var date = new DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
    var date = DateTime.parse(timestamp);
    var formatDate = DateFormat('dd MMM yyyy').format(date);
    return formatDate;
  }

  static String getDateTime(String timestamp) {
    // var date = new DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
    var date = DateTime.parse(timestamp);
    var formatDate = DateFormat('dd-MMM-yyyy hh:mm a').format(date);
    return formatDate;
  }

  static int convertDoubleToInt(String source) {
    return double.parse(source).toInt();
  }

  static Future<bool> isInternetConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
 
}

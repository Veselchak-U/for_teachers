import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension MtDateTime on DateTime {
  String dateWithWeekday(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    final dateFormat = DateFormat('d MMMM, EEEE', locale);
    return dateFormat.format(this);
  }
}

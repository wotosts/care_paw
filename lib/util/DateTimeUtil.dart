import 'package:intl/intl.dart';

final DATE_FORMAT = DateFormat('yyyy.MM.dd');

extension DateTimeUtil on DateTime? {
  String toDateString() => this != null ? DATE_FORMAT.format(this!) : '';
}

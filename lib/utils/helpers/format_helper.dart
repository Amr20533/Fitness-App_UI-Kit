import 'package:intl/intl.dart';

class FormatHelper{
  static String formatDateToMonthYear(String dateString) {
    DateTime date = DateTime.parse(dateString);
    return DateFormat('MMMM yyyy').format(date);
  }

}
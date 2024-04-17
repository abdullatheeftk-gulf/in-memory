
import 'package:intl/intl.dart';

String getTimeFromDateTime(DateTime dateTime){
  return DateFormat('h:mm:a').format(dateTime);
}
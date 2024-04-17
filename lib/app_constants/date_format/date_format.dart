import 'package:intl/intl.dart';

String formatDate(DateTime dateTime){
  final formater = DateFormat("dd-MM-yyyy");
  return formater.format(dateTime);
}
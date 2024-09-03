import 'package:chaty/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeHelper {
  static Future<PickedDateModel?> getDate(
      {required BuildContext context,
      bool isCardDate = false,
      DateTime? initialDate,
      required DateTime firstDate,
      required DateTime lastDate}) async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: AppColors.grey,

                onPrimary: Colors.white,
                onSurface: AppColors.black, // body text color
              ),
            ),
            child: child!),
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate);

    if (dateTime != null) {
      if (isCardDate) {
        List<String> list = dateTime.toString().split(" ")[0].split("-");

        String date = "${list[0]}-${list[1]}";

        return PickedDateModel(formatedDate: date, pickedDateTime: dateTime);
      } else {
        String date = dateTime.toString().split(" ")[0];

        return PickedDateModel(formatedDate: date, pickedDateTime: dateTime);
      }
    }
    return null;
  }

  static String convertDateTimeFromString(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('dd/MM/yyyy').format(dateTime);
    return formattedDate;
  }

  static String getDayOfWeek(int weekday) {
    switch (weekday) {
      case 1:
        return 'monday';
      case 2:
        return 'tuesday';
      case 3:
        return 'wednesday';
      case 4:
        return 'thursday';
      case 5:
        return 'friday';
      case 6:
        return 'saturday';
      case 7:
        return 'sunday';
      default:
        return '';
    }
  }
}

class PickedDateModel {
  final String formatedDate;
  final DateTime pickedDateTime;
  PickedDateModel({required this.formatedDate, required this.pickedDateTime});
}

part of 'utils.dart';

class AppColors {
  static const Color red = Color(0xFFC82B3A);
  static const Color greenlight = Color(0xFF00FF66);
  static const Color blueGreen1 = Color.fromARGB(255, 199, 252, 252);
  static const Color blueGreen2 = Color(0xFF00FD69);
  static const Color blueGreenMain = Color(0xFF05A2E6);
  static const Color darkGreen = Color(0xFF1C7B00);
  static const Color txetGreen = Color(0xFF42AC00);
  static const Color lightGreen = Color(0xFF9CC908);
  static const Color black = Color(0xFF1D1D1D);
  static const Color grey = Color(0xFF707070);
  static const Color darkGrey = Color(0xFFA8A8A8);
  static const Color textGrey = Color(0xFF969696);
  static const Color dashColor = Color(0xFFEAEAEA);
  static const Color lightGrey = Color(0xFFEDEDED);
  static const Color greyBackground = Color(0xFFF7F7F7);
  static const Color blueGray = Color(0xFF7E94B4);
  static const Color darkRed = Color(0xFF93232E);
}

extension ColorExtension on String {
  toColor() {
    var hexStringColor = this;
    final buffer = StringBuffer();

    if (hexStringColor.length == 6 || hexStringColor.length == 7) {
      buffer.write('ff');
      buffer.write(hexStringColor.replaceFirst("#", ""));
      return Color(int.parse(buffer.toString(), radix: 16));
    }
  }
}

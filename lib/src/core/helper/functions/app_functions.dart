import 'package:my_website/src/core/config/app_imports.dart';

abstract class AppFunctions {
  static void launch({required String url}) async {
    final link = Uri.parse(url);
    if (await canLaunchUrl(link)) {
      launchUrl(link);
    }
  }
}
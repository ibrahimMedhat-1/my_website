import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_website/src/core/config/app_imports.dart';

extension Distance on num {
  Widget get isHeight => SizedBox(height: h);

  Widget get isWidth => SizedBox(width: w);
}

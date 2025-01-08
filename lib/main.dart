import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_website/src/core/config/app_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setUpLocators();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomePageCubit>(create: (context) => HomePageCubit()),
        BlocProvider<AboutCubit>(create: (context) => AboutCubit()),
        BlocProvider<LayoutCubit>(create: (context) => LayoutCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        child: MaterialApp(
          title: 'Ibrahim Medhat',
          debugShowCheckedModeBanner: false,
          theme: LightTheme.generate(),
          home: const Layout(),
        ),
      ),
    );
  }
}

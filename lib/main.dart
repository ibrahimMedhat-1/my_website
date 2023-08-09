import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_website/layout/layout.dart';
import 'package:my_website/view_model/home_page_cubit/home_page_cubit.dart';
import 'package:my_website/view_model/layout_cubit/layout_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LayoutCubit>(create: (context) => LayoutCubit()),
        BlocProvider<HomePageCubit>(create: (context) => HomePageCubit()),
      ],
      child: MaterialApp(
        title: 'Ibrahim Website',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              elevation: 5,
              centerTitle: false,
              shadowColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                fontSize: 40,
              ),
              bodySmall: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            )),
        home: const Layout(),
      ),
    );
  }
}

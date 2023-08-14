import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_website/view_model/layout_cubit/layout_cubit.dart';

import '../shared/components/animated_default_button.dart';
import '../shared/style.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        LayoutCubit cubit = LayoutCubit.get(context);
        return Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 829) {
                    return AppBar(
                      iconTheme: const IconThemeData(color: Colors.blue),
                      title: const Text(
                        'Ibrahim Medhat',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  } else {
                    return AppBar(
                      iconTheme: const IconThemeData(color: Colors.blue),
                      title: const Text(
                        'Ibrahim Medhat',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      actions: [
                        DefaultButton(
                          text: 'Home',
                          onTap: () {
                            cubit.changePage(0);
                          },
                          borderRadius: appBarRadius,
                          fontSize: appBarFontSize,
                          width: appBarWidth,
                          height: 10,
                          borderColor: appBarColor,
                          marginTop: appBarMarginTop,
                          marginRight: appBarMarginRight,
                          containerColor: cubit.isSelected[0] ? Colors.blue : Colors.white,
                          mainContainerColor: cubit.isSelected[0] ? Colors.blue : Colors.white,
                          animationContainerColor: Colors.blue,
                          animationTextColor: Colors.white,
                          textColor: cubit.isSelected[0] ? Colors.white : Colors.blue,
                          mainTextColor: cubit.isSelected[0] ? Colors.white : Colors.blue,
                          isSelected: cubit.isSelected[0],
                        ),
                        DefaultButton(
                          text: 'About',
                          onTap: () {
                            cubit.changePage(1);
                          },
                          borderRadius: appBarRadius,
                          fontSize: appBarFontSize,
                          width: appBarWidth,
                          height: appBarHeight,
                          borderColor: appBarColor,
                          marginTop: appBarMarginTop,
                          marginRight: appBarMarginRight,
                          containerColor: cubit.isSelected[1] ? Colors.blue : Colors.white,
                          mainContainerColor: cubit.isSelected[1] ? Colors.blue : Colors.white,
                          textColor: cubit.isSelected[1] ? Colors.white : Colors.blue,
                          mainTextColor: cubit.isSelected[1] ? Colors.white : Colors.blue,
                          animationContainerColor: Colors.blue,
                          animationTextColor: Colors.white,
                          isSelected: cubit.isSelected[1],
                        ),
                        DefaultButton(
                          text: 'Projects',
                          onTap: () {
                            cubit.changePage(2);
                          },
                          borderRadius: appBarRadius,
                          fontSize: appBarFontSize,
                          width: appBarWidth,
                          height: appBarHeight,
                          borderColor: appBarColor,
                          marginTop: appBarMarginTop,
                          marginRight: appBarMarginRight,
                          containerColor: cubit.isSelected[2] ? Colors.blue : Colors.white,
                          mainContainerColor: cubit.isSelected[2] ? Colors.blue : Colors.white,
                          textColor: cubit.isSelected[2] ? Colors.white : Colors.blue,
                          mainTextColor: cubit.isSelected[2] ? Colors.white : Colors.blue,
                          animationContainerColor: Colors.blue,
                          animationTextColor: Colors.white,
                          isSelected: cubit.isSelected[2],
                        ),
                        DefaultButton(
                          text: 'Contact',
                          onTap: () {
                            cubit.changePage(3);
                          },
                          borderRadius: appBarRadius,
                          fontSize: appBarFontSize,
                          width: appBarWidth,
                          height: appBarHeight,
                          borderColor: appBarColor,
                          marginTop: appBarMarginTop,
                          marginRight: appBarMarginRight,
                          containerColor: cubit.isSelected[3] ? Colors.blue : Colors.white,
                          mainContainerColor: cubit.isSelected[3] ? Colors.blue : Colors.white,
                          textColor: cubit.isSelected[3] ? Colors.white : Colors.blue,
                          mainTextColor: cubit.isSelected[3] ? Colors.white : Colors.blue,
                          animationContainerColor: Colors.blue,
                          animationTextColor: Colors.white,
                          isSelected: cubit.isSelected[3],
                        ),
                      ],
                    );
                  }
                },
              ),
              Expanded(child: cubit.pages[cubit.page]),
            ],
          )),
          drawer: Container(),
          // body: cubit.pages[1],
        );
      },
    );
  }
}

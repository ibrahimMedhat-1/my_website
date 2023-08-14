import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_website/view_model/layout_cubit/layout_cubit.dart';

import '../shared/components/animated_contact_icons.dart';
import '../shared/components/animated_default_button.dart';
import '../shared/style.dart';
import '../view_model/home_page_cubit/home_page_cubit.dart';

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
          drawer: Container(
            color: Colors.white,
            width: 300,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 300,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Ibrahim Medhat',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),

                ///home
                MaterialButton(
                  onPressed: () {
                    cubit.changePage(0);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                          color: cubit.isSelected[0] ? Colors.blue : Colors.grey,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 20,
                            color: cubit.isSelected[0] ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                ///about
                MaterialButton(
                  onPressed: () {
                    cubit.changePage(1);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 30,
                          color: cubit.isSelected[1] ? Colors.blue : Colors.grey,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: 20,
                            color: cubit.isSelected[1] ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                ///projects
                MaterialButton(
                  onPressed: () {
                    cubit.changePage(2);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        ImageIcon(
                          const AssetImage('assets/contact_icons/github.png'),
                          size: 30,
                          color: cubit.isSelected[2] ? Colors.blue : Colors.grey,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Projects',
                          style: TextStyle(
                            fontSize: 20,
                            color: cubit.isSelected[2] ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                ///contact
                MaterialButton(
                  onPressed: () {
                    cubit.changePage(3);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.perm_contact_calendar_rounded,
                          size: 30,
                          color: cubit.isSelected[3] ? Colors.blue : Colors.grey,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 20,
                            color: cubit.isSelected[3] ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black45,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContactIcon(
                      icon: 'assets/contact_icons/gitHub.png',
                      onTap: () {
                        HomePageCubit.get(context).launch(url: 'https://github.com/ibrahimMedhat-1');
                      },
                    ),
                    const SizedBox(width: 20),
                    ContactIcon(
                      icon: 'assets/contact_icons/linkedin.png',
                      onTap: () {
                        HomePageCubit.get(context).launch(url: 'https://www.linkedin.com/in/ibrahim-medhat-612043224/');
                      },
                    ),
                    const SizedBox(width: 20),
                    ContactIcon(
                      icon: 'assets/contact_icons/whatsapp.png',
                      onTap: () {
                        HomePageCubit.get(context).launch(url: 'https://wa.me/201553708872?text=Hi,%20I%20wanna%20talk%20about%20business.');
                      },
                    ),
                    const SizedBox(width: 20),
                    ContactIcon(
                      icon: 'assets/contact_icons/facebook.png',
                      onTap: () {
                        HomePageCubit.get(context).launch(url: 'https://www.facebook.com/Ibrahimmedha?mibextid=ZbWKwL');
                      },
                    ),
                    const SizedBox(width: 20),
                    ContactIcon(
                      icon: 'assets/contact_icons/instagram.png',
                      onTap: () {
                        HomePageCubit.get(context).launch(url: 'https://instagram.com/ibrahemmedhat2014?igshid=MzNlNGNkZWQ4Mg==');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Ibrahim Medhat copyright 2023 developed by Ibrahim Medhat',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 10,
                      ),
                ),
              ],
            ),
          ),
          // body: cubit.pages[1],
        );
      },
    );
  }
}

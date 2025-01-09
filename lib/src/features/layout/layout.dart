import 'package:my_website/src/core/config/app_imports.dart';
import 'package:my_website/src/core/helper/functions/app_functions.dart';

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
                        titleSpacing: 0,
                        iconTheme: const IconThemeData(color: Colors.blue),
                        title: Row(
                          children: [
                            Assets.mainLogo.svg(),
                            const Text(
                              'Ibrahim Medhat',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return AppBar(
                        surfaceTintColor: Colors.white,
                        iconTheme: const IconThemeData(color: Colors.blue),
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            spacing: 7,
                            children: [
                              Assets.mainLogo.svg(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Ibrahim Medhat',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flutter',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Developer',
                                        style: TextStyle(
                                          color: AppColors.mainColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              DefaultButton(
                                text: 'Home',
                                onTap: () {
                                  cubit.changePage(0);
                                },
                                borderRadius: appBarRadius,
                                fontSize: appBarFontSize,
                                width: appBarWidth,
                                height: appBarHeight,
                                borderColor: Colors.transparent,
                                marginTop: appBarMarginTop,
                                marginRight: appBarMarginRight,
                                containerColor: Colors.transparent,
                                mainContainerColor: Colors.transparent,
                                animationContainerColor: Colors.transparent,
                                animationTextColor: AppColors.mainColor,
                                textColor: cubit.isSelected[0] ? AppColors.mainColor : Colors.black,
                                mainTextColor: cubit.isSelected[0] ? AppColors.mainColor : Colors.black,
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
                                borderColor: Colors.transparent,
                                marginTop: appBarMarginTop,
                                marginRight: appBarMarginRight,
                                containerColor: Colors.transparent,
                                mainContainerColor: Colors.transparent,
                                animationContainerColor: Colors.transparent,
                                animationTextColor: AppColors.mainColor,
                                textColor: cubit.isSelected[1] ? AppColors.mainColor : Colors.black,
                                mainTextColor: cubit.isSelected[1] ? AppColors.mainColor : Colors.black,
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
                                borderColor: Colors.transparent,
                                marginTop: appBarMarginTop,
                                marginRight: appBarMarginRight,
                                containerColor: Colors.transparent,
                                mainContainerColor: Colors.transparent,
                                animationContainerColor: Colors.transparent,
                                animationTextColor: AppColors.mainColor,
                                textColor: cubit.isSelected[2] ? AppColors.mainColor : Colors.black,
                                mainTextColor: cubit.isSelected[2] ? AppColors.mainColor : Colors.black,
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
                                borderColor: Colors.transparent,
                                marginTop: appBarMarginTop,
                                marginRight: appBarMarginRight,
                                containerColor: Colors.transparent,
                                mainContainerColor: Colors.transparent,
                                animationContainerColor: Colors.transparent,
                                animationTextColor: AppColors.mainColor,
                                textColor: cubit.isSelected[3] ? AppColors.mainColor : Colors.black,
                                mainTextColor: cubit.isSelected[3] ? AppColors.mainColor : Colors.black,
                                isSelected: cubit.isSelected[3],
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5),
                            child: DefaultButton(
                              text: 'Hire Me',
                              onTap: (){
                                AppFunctions.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
                              },
                              borderRadius: 8,
                              fontSize: 16,
                              width: 150,
                              height: 70,
                              borderColor: AppColors.mainColor,
                              marginTop: 0,
                              marginRight: 0,
                              containerColor: AppColors.mainColor,
                              mainContainerColor: AppColors.mainColor,
                              animationContainerColor: AppColors.mainColor.withAlpha(60),
                              textColor: Colors.white,
                              mainTextColor: Colors.white,
                              animationTextColor: AppColors.mainColor,
                              isSelected: false,
                            ),
                          ),
                          2.isWidth,
                          Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10),
                            child: DefaultButton(
                              text: 'Download CV',
                              onTap: (){
                                AppFunctions.launch(
                                    url:
                                    'https://drive.google.com/file/d/1K02ioXeBJJHPuffeXTALScn_9wjVCuXV/view?usp=sharing');                            },
                              borderRadius: 8,
                              fontSize: 16,
                              width: 150,
                              height: 70,
                              borderColor: AppColors.mainColor,
                              marginTop: 0,
                              marginRight: 0,
                              containerColor: Colors.white,
                              mainContainerColor: Colors.white,
                              animationContainerColor: AppColors.mainColor.withAlpha(60),
                              textColor: Colors.black,
                              mainTextColor: AppColors.mainColor,
                              animationTextColor: AppColors.mainColor,
                              isSelected: false,
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),

                Expanded(child: cubit.pages[cubit.page]),

              ],
            ),
          ),
          // drawer: DrawerWidget(cubit: cubit),
        );
      },
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.cubit,
  });

  final LayoutCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 300,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Ibrahim Medhat',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                      'Contact',
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
                /// github
                // html.Platform.isIOS
                //     ? InkWell(
                //         onTap: () {
                //           HomePageCubit.get(context).launch(url: 'https://github.com/ibrahimMedhat-1');
                //         },
                //         child: const ImageIcon(
                //           AssetImage('assets/contact_icons/github.png'),
                //         ))
                //     :
                ContactIcon(
                  icon: 'assets/contact_icons/github.png',
                  onTap: () {
                    HomePageCubit.get(context).launch(url: 'https://github.com/ibrahimMedhat-1');
                  },
                ),
                const SizedBox(width: 20),

                /// linkedIn
                // html.Platform.isIOS
                //     ? InkWell(
                //         onTap: () {
                //           HomePageCubit.get(context)
                //               .launch(url: 'https://www.linkedin.com/in/ibrahim-medhat-612043224/');
                //         },
                //         child: const ImageIcon(
                //           AssetImage('assets/contact_icons/linkedin.png'),
                //         ))
                //     :
                ContactIcon(
                  icon: 'assets/contact_icons/linkedin.png',
                  onTap: () {
                    HomePageCubit.get(context)
                        .launch(url: 'https://www.linkedin.com/in/ibrahim-medhat-612043224/');
                  },
                ),
                const SizedBox(width: 20),

                /// whatsapp
                // html.Platform.isIOS
                //     ? InkWell(
                //         onTap: () {
                //           HomePageCubit.get(context).launch(
                //               url:
                //                   'https://wa.me/201553708872?text=Hi,%20I%20wanna%20talk%20about%20business.');
                //         },
                //         child: const ImageIcon(
                //           AssetImage('assets/contact_icons/whatsapp.png'),
                //         ))
                //     :
                ContactIcon(
                  icon: 'assets/contact_icons/whatsapp.png',
                  onTap: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://wa.me/201553708872?text=Hi,%20I%20wanna%20talk%20about%20business.');
                  },
                ),
                const SizedBox(width: 20),

                /// facebook
                // html.Platform.isIOS
                //     ? InkWell(
                //         onTap: () {
                //           HomePageCubit.get(context)
                //               .launch(url: 'https://www.facebook.com/Ibrahimmedha?mibextid=ZbWKwL');
                //         },
                //         child: const ImageIcon(
                //           AssetImage('assets/contact_icons/facebook.png'),
                //         ))
                //     :
                ContactIcon(
                  icon: 'assets/contact_icons/facebook.png',
                  onTap: () {
                    HomePageCubit.get(context)
                        .launch(url: 'https://www.facebook.com/Ibrahimmedha?mibextid=ZbWKwL');
                  },
                ),
                const SizedBox(width: 20),

                /// instagram
                // html.Platform.isIOS
                //     ? InkWell(
                //         onTap: () {
                //           HomePageCubit.get(context).launch(
                //               url: 'https://instagram.com/ibrahemmedhat2014?igshid=MzNlNGNkZWQ4Mg==');
                //         },
                //         child: const ImageIcon(
                //           AssetImage('assets/contact_icons/instagram.png'),
                //         ))
                //     :
                ContactIcon(
                  icon: 'assets/contact_icons/instagram.png',
                  onTap: () {
                    HomePageCubit.get(context)
                        .launch(url: 'https://instagram.com/ibrahemmedhat2014?igshid=MzNlNGNkZWQ4Mg==');
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
    );
  }
}

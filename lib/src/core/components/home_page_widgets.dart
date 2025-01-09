import 'package:flutter_svg/svg.dart';
import 'package:my_website/src/core/config/app_imports.dart';

Widget dataWidget(context) => Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ibrahim Medhat',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
        ),
        Text(
          'Flutter Developer',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.mainColor,
                fontSize: 40,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Software Engineer / Flutter Developer / Back-End Developer / WebSite Developer / Mobile App Developer',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: complementaryColor),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );

Widget dataButtonsWidget({
  required Function() hireMe,
  required Function() portfolio,
}) =>
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DefaultButton(
          text: 'Contact Me',
          onTap: hireMe,
          borderRadius: 8,
          fontSize: 16,
          width: 200,
          height: 50,
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
        const SizedBox(
          width: 20,
        ),
        DefaultButton(
          text: 'View Portfolio',
          onTap: portfolio,
          borderRadius: 8,
          fontSize: 20,
          width: 200,
          height: 50,
          borderColor: Colors.transparent,
          marginTop: 0,
          marginRight: 0,
          containerColor: Colors.white,
          mainContainerColor: Colors.white,
          animationContainerColor: AppColors.mainColor.withAlpha(60),
          textColor: Colors.black,
          mainTextColor:AppColors.mainColor,
          animationTextColor: Colors.white,
          isSelected: false,
        ),
      ],
    );

Widget whoAmIWidget({
  required context,
  required Function() downloadCv,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Who Am i ?',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: complementaryColor,
              ),
        ),
        Text(
          'I\'m Ibrahim Medhat',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'I have been the first of my class for the whole four years with 3.7 GPA'
          ' and degree Excellent at my graduation project.'
          ' I dream to be an expert in Artificial intelligence and have a master degree in it.'
          ' Right now, i am looking for a junior Flutter Developer position at a company that can help me to achieve my goal.',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: complementaryColor,
                fontSize: 25,
              ),
        ),
        DefaultButton(
          text: 'Download CV',
          onTap: downloadCv,
          borderRadius: 20,
          fontSize: 20,
          width: 150,
          height: 70,
          borderColor: Colors.transparent,
          marginTop: 20,
          marginRight: 0,
          containerColor: Colors.blue,
          mainContainerColor: Colors.blue,
          animationContainerColor: Colors.grey.shade300,
          textColor: Colors.white,
          mainTextColor: Colors.white,
          animationTextColor: Colors.blue,
          isSelected: false,
        ),
      ],
    );

Widget serviceCardsWeb() => const Expanded(
      child: Row(
        children: [
          ServiceWidgetWeb(
            backgroundImage: 'assets/service_images/ui_ux.png',
            text:
                'Create beautiful user interfaces with the best user experience using Figma.',
            title: 'UI / UX',
          ),
          SizedBox(
            width: 20,
          ),
          ServiceWidgetWeb(
            backgroundImage: 'assets/service_images/mobileApp.png',
            title: 'Mobile App',
            text: 'Build mobile apps for both Android & IOS.',
          ),
          SizedBox(
            width: 20,
          ),
          ServiceWidgetWeb(
            backgroundImage: 'assets/service_images/website.png',
            title: 'Website',
            text: 'Develop websites and deploying it on internet.',
          ),
        ],
      ),
    );

Widget serviceCardsMobile() => const Expanded(
      child: Column(
        children: [
          ServiceWidgetMobile(
            backgroundImage: 'assets/service_images/ui_ux.png',
            text:
                'Create beautiful user interfaces with the best user experience using Figma.',
            title: 'UI / UX',
          ),
          SizedBox(
            height: 20,
          ),
          ServiceWidgetMobile(
            backgroundImage: 'assets/service_images/mobileApp.png',
            title: 'Mobile App',
            text: 'Build mobile apps for both Android & IOS.',
          ),
          SizedBox(
            height: 20,
          ),
          ServiceWidgetMobile(
            backgroundImage: 'assets/service_images/website.png',
            title: 'Website',
            text: 'Develop websites and deploying it on internet.',
          ),
        ],
      ),
    );

Widget getInTouch({
  required context,
  required Function() hireMe,
  required Function() portfolio,
}) =>
    SizedBox(
      height: 200,
      width: double.infinity,
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Contact',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      ' Me',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Mauris primis turpis Laoreet magna felis ',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const Text(
                  'Mauris primis turpis Laoreet magna felis ',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/main_logo.svg',width: 30,height: 30,),
                    const SizedBox(width:8 ,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ibrahim Medhat',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),



        ],
      ),
    );

Widget contactIconsWeb({
  required context,
  required Function() gitHub,
  required Function() linkedIn,
  required Function() whatsApp,
  required Function() faceBook,
  required Function() instagram,
}) =>
    SizedBox(
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ibrahim Medhat copyright 2023 developed by Ibrahim Medhat',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/github.png',
                  onTap: gitHub,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/linkedin.png',
                  onTap: linkedIn,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/whatsapp.png',
                  onTap: whatsApp,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/facebook.png',
                  onTap: faceBook,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/instagram.png',
                  onTap: instagram,
                ),
              ],
            ),
          ),
        ],
      ),
    );

Widget contactIconsMobile({
  required context,
  required Function() gitHub,
  required Function() linkedIn,
  required Function() whatsApp,
  required Function() faceBook,
  required Function() instagram,
}) =>
    SizedBox(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ibrahim Medhat copyright 2023 developed by Ibrahim Medhat',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// github
                    // // html.Platform.isIOS
                    // //     ? InkWell(
                    // //         onTap: gitHub,
                    // //         child: const ImageIcon(
                    // //           AssetImage('assets/contact_icons/github.png'),
                    // //         ))
                    // //
                    //     :
                    ContactIcon(
                      icon: 'assets/contact_icons/github.png',
                      onTap: gitHub,
                    ),
                    const SizedBox(width: 20),

                    /// linkedIn
                    // // html.Platform.isIOS
                    // //     ? InkWell(
                    // //         onTap: linkedIn,
                    // //         child: const ImageIcon(
                    // //           AssetImage('assets/contact_icons/linkedin.png'),
                    // //         ))
                    // //     :

                    ContactIcon(
                      icon: 'assets/contact_icons/linkedin.png',
                      onTap: linkedIn,
                    ),
                    const SizedBox(width: 20),

                    /// whatsapp
                    // html.Platform.isIOS
                    //     ? InkWell(
                    //         onTap: whatsApp,
                    //         child: const ImageIcon(
                    //           AssetImage('assets/contact_icons/whatsapp.png'),
                    //         ))
                    //     :
                    ContactIcon(
                      icon: 'assets/contact_icons/whatsapp.png',
                      onTap: whatsApp,
                    ),
                    const SizedBox(width: 20),

                    /// facebook
                    // html.Platform.isIOS
                    //     ? InkWell(
                    //         onTap: faceBook,
                    //         child: const ImageIcon(
                    //           AssetImage('assets/contact_icons/facebook.png'),
                    //         ))
                    //     :
                    ContactIcon(
                      icon: 'assets/contact_icons/facebook.png',
                      onTap: faceBook,
                    ),
                    const SizedBox(width: 20),

                    /// instagram
                    // html.Platform.isIOS
                    //     ? InkWell(
                    //         onTap: instagram,
                    //          child: const ImageIcon(
                    //           AssetImage('assets/contact_icons/instagram.png'),
                    //         ))
                    //     :
                    ContactIcon(
                      icon: 'assets/contact_icons/instagram.png',
                      onTap: instagram,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

Widget contactWithMe(context) =>

    /// Contact with me
    Container(
      color: const Color(0xFFF8F8F8),

      child: Column(
        children: [
          /// Get in touch
          getInTouch(
            context: context,
            hireMe: () {
              HomePageCubit.get(context)
                  .launch(url: 'mailto:ibrahimmedhat112@gmail.com');
            },
            portfolio: () {
              LayoutCubit.get(context).changePage(2);
            },
          ),
          const Divider(
            thickness: 1,
            color: Colors.black45,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 785) {
                return contactIconsMobile(
                  context: context,
                  gitHub: () {
                    HomePageCubit.get(context)
                        .launch(url: 'https://github.com/ibrahimMedhat-1');
                  },
                  linkedIn: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://www.linkedin.com/in/ibrahim-medhat-612043224/');
                  },
                  whatsApp: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://wa.me/201553708872?text=Hi,%20I%20wanna%20talk%20about%20business.');
                  },
                  faceBook: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://www.facebook.com/Ibrahimmedha?mibextid=ZbWKwL');
                  },
                  instagram: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://instagram.com/ibrahemmedhat2014?igshid=MzNlNGNkZWQ4Mg==');
                  },
                );
              } else {
                return contactIconsWeb(
                  context: context,
                  gitHub: () {
                    HomePageCubit.get(context)
                        .launch(url: 'https://github.com/ibrahimMedhat-1');
                  },
                  linkedIn: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://www.linkedin.com/in/ibrahim-medhat-612043224/');
                  },
                  whatsApp: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://wa.me/201553708872?text=Hi,%20I%20wanna%20talk%20about%20business.');
                  },
                  faceBook: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://www.facebook.com/Ibrahimmedha?mibextid=ZbWKwL');
                  },
                  instagram: () {
                    HomePageCubit.get(context).launch(
                        url:
                            'https://instagram.com/ibrahemmedhat2014?igshid=MzNlNGNkZWQ4Mg==');
                  },
                );
              }
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );

Widget services() => SizedBox(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 736) {
            /// mobile
            return Container(
              height: 1500,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              color: color,
              child: Column(
                children: [
                  Text(
                    'Services',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: complementaryColor,
                          fontSize: 30,
                        ),
                  ),
                  Text(
                    'What can I do for you',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 30,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  serviceCardsMobile(),
                ],
              ),
            );
          } else {
            /// web
            return Container(
              height: 580,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              color: color,
              child: Column(
                children: [
                  Text(
                    'Services',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: complementaryColor,
                          fontSize: 30,
                        ),
                  ),
                  Text(
                    'What can I do for you',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  serviceCardsWeb(),
                ],
              ),
            );
          }
        },
      ),
    );

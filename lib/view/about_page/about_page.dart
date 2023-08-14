import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_website/shared/components/about_widgets.dart';
import 'package:my_website/shared/style.dart';
import 'package:my_website/view_model/about_cubit/about_cubit.dart';
import 'package:my_website/view_model/layout_cubit/layout_cubit.dart';

import '../../shared/components/animated_default_button.dart';
import '../../shared/components/home_page_widgets.dart';
import '../../shared/core.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutCubit(),
      child: BlocConsumer<AboutCubit, AboutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          AboutCubit cubit = AboutCubit.get(context);
          return BlocConsumer<LayoutCubit, LayoutState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              LayoutCubit.get(context).changePage(1);
              return Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// About title
                      Container(
                        height: 180,
                        width: double.infinity,
                        color: color,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'About',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    LayoutCubit.get(context).changePage(0);
                                  },
                                  child: Text(
                                    'Home',
                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                          color: Colors.blue,
                                        ),
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                ),
                                Text(
                                  ' About',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      ///personal Data
                      LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth < 829) {
                            /// mobile
                            cubit.changeOS(OS.mobile);
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                /// image
                                Container(
                                  height: 350,
                                  width: 330,
                                  margin: const EdgeInsets.only(
                                    top: 30,
                                    // bottom: 80,
                                    left: 20,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/profileImage.jpg',
                                      ),
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),

                                /// paragraph & personal data
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 30),

                                      /// hello
                                      Text(
                                        'Hello, I Am a Flutter developer',
                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                              color: complementaryColor,
                                              fontSize: 35,
                                            ),
                                      ),
                                      const SizedBox(height: 10),

                                      /// experience
                                      Text(
                                        'Having 1 Year Of Experience',
                                        style: Theme.of(context).textTheme.bodyLarge,
                                      ),
                                      const SizedBox(height: 10),

                                      /// paragraph
                                      Text(
                                        'Hi there! I am a flutter developer with experience in building mobile applications for both android & ios system.'
                                        'My experience includes Dart, Bloc, Provider, dependency injection, Connecting Flutter applications to backends,'
                                        ' Firebase Firestore, Local Storage. help in writing lectures and delivering helping workshops and projects.',
                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                              height: 1.5,
                                              color: complementaryColor,
                                              fontSize: 20,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Divider(
                                        thickness: 3,
                                        color: Colors.black45,
                                      ),
                                      const SizedBox(height: 10),

                                      /// name & place
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          personalDataWidget(
                                            icon: Icons.person,
                                            personal: 'Name',
                                            text: const Text(
                                              ' Ibrahim Medhat',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          personalDataWidget(
                                            icon: Icons.location_on,
                                            personal: 'From',
                                            text: const Text(
                                              ' Cairo - Egypt',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),

                                      /// Birthday
                                      personalDataWidget(
                                        icon: Icons.cake,
                                        personal: 'Birthday',
                                        text: const Text(
                                          ' 28/9/2000',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),

                                      /// email & phone
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          personalDataWidget(
                                            icon: Icons.email,
                                            personal: 'Email',
                                            text: InkWell(
                                              onTap: () {
                                                cubit.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
                                              },
                                              child: const Text(
                                                ' ibrahimmedhat112@gmail.com',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          personalDataWidget(
                                            icon: Icons.phone,
                                            personal: 'Phone',
                                            text: InkWell(
                                              onTap: () {
                                                cubit.launch(url: 'tel:+201553708872');
                                              },
                                              child: const Text(
                                                ' +201553708872',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      DefaultButton(
                                        text: 'Download CV',
                                        onTap: () {
                                          cubit.launch(url: 'https://drive.google.com/file/d/1K02ioXeBJJHPuffeXTALScn_9wjVCuXV/view?usp=sharing');
                                        },
                                        borderRadius: 20,
                                        fontSize: 20,
                                        width: 150,
                                        height: 70,
                                        borderColor: Colors.transparent,
                                        marginTop: 0,
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
                                  ),
                                ),
                              ],
                            );
                          } else {
                            /// web
                            cubit.changeOS(OS.web);
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// image
                                Container(
                                  height: 350,
                                  width: 200,
                                  margin: const EdgeInsets.only(
                                    top: 80,
                                    bottom: 80,
                                    left: 20,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/profileImage.jpg',
                                      ),
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),

                                /// paragraph & personal data
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 30),

                                        /// hello
                                        Text(
                                          'Hello, I Am a Flutter developer',
                                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                color: complementaryColor,
                                                fontSize: 35,
                                              ),
                                        ),
                                        const SizedBox(height: 10),

                                        /// experience
                                        Text(
                                          'Having 1 Year Of Experience',
                                          style: Theme.of(context).textTheme.bodyLarge,
                                        ),
                                        const SizedBox(height: 10),

                                        /// paragraph
                                        Text(
                                          'Hi there! I am a flutter developer with experience in building mobile applications for both android & ios system.'
                                          'My experience includes Dart, Bloc, Provider, dependency injection, Connecting Flutter applications to backends,'
                                          ' Firebase Firestore, Local Storage. help in writing lectures and delivering helping workshops and projects.',
                                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                height: 1.5,
                                                color: complementaryColor,
                                                fontSize: 20,
                                              ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Divider(
                                          thickness: 3,
                                          color: Colors.black45,
                                        ),
                                        const SizedBox(height: 10),

                                        /// name & place
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            personalDataWidget(
                                              icon: Icons.person,
                                              personal: 'Name',
                                              text: const Text(
                                                ' Ibrahim Medhat',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ),
                                            personalDataWidget(
                                              icon: Icons.location_on,
                                              personal: 'From',
                                              text: const Text(
                                                ' Cairo - Egypt',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),

                                        /// Birthday
                                        personalDataWidget(
                                          icon: Icons.cake,
                                          personal: 'Birthday',
                                          text: const Text(
                                            ' 28/9/2000',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),

                                        /// email & phone
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            personalDataWidget(
                                              icon: Icons.email,
                                              personal: 'Email',
                                              text: InkWell(
                                                onTap: () {
                                                  cubit.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
                                                },
                                                child: const Text(
                                                  ' ibrahimmedhat112@gmail.com',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            personalDataWidget(
                                              icon: Icons.phone,
                                              personal: 'Phone',
                                              text: InkWell(
                                                onTap: () {
                                                  cubit.launch(url: 'tel:+201553708872');
                                                },
                                                child: const Text(
                                                  ' +201553708872',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        DefaultButton(
                                          text: 'Download CV',
                                          onTap: () {
                                            cubit.launch(url: 'https://drive.google.com/file/d/1K02ioXeBJJHPuffeXTALScn_9wjVCuXV/view?usp=sharing');
                                          },
                                          borderRadius: 20,
                                          fontSize: 20,
                                          width: 150,
                                          height: 70,
                                          borderColor: Colors.transparent,
                                          marginTop: 0,
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
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        },
                      ),

                      /// services
                      SizedBox(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            if (constraints.maxWidth < 736) {
                              /// mobile
                              return Container(
                                height: 1500,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
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
                                            fontSize: 35,
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
                      ),

                      /// languages & tools
                      Padding(
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Languages & Tools:',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 20),
                            GridView.count(
                              crossAxisCount: cubit.os == OS.mobile ? 1 : 3,
                              childAspectRatio: 10,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: cubit.languages
                                  .map(
                                    (e) => Text(
                                      e,
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  )
                                  .toList(),
                            )
                          ],
                        ),
                      ),

                      ///bachelor
                      Container(
                        height: 620,
                        width: double.infinity,
                        color: color,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Education',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              'My Education',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 500,
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    height: 300,
                                    width: 300,
                                    'assets/thebesLogo.png',
                                    scale: 0.3,
                                  ),
                                  const Text(
                                    'Bachelor of Computer Science: Computer Science And Programming,',
                                    style: TextStyle(fontSize: 20, color: Colors.blue),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 10),
                                  const Text('Thebes Academy'),
                                  const Text('2019 - 2023'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      /// contact with me
                      contactWithMe(context),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

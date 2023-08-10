import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_website/shared/components/home_page_widgets.dart';
import 'package:my_website/shared/style.dart';
import 'package:my_website/view_model/home_page_cubit/home_page_cubit.dart';
import 'package:my_website/view_model/layout_cubit/layout_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        HomePageCubit cubit = HomePageCubit.get(context);
        return BlocConsumer<LayoutCubit, LayoutState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            LayoutCubit.get(context).changePage(0);
            return Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    /// name and data and profile picture
                    Container(
                      height: 550,
                      decoration: BoxDecoration(
                        color: color,
                      ),
                      child: Row(
                        children: [
                          /// Name and Data
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  dataWidget(context),
                                  dataButtonsWidget(
                                    hireMe: () {
                                      cubit.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
                                    },
                                    portfolio: () {
                                      LayoutCubit.get(context).changePage(2);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),

                          /// Profile Picture
                          const Expanded(
                            flex: 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  minRadius: 80,
                                  maxRadius: 120,
                                  backgroundImage: AssetImage('assets/profileImage.jpg'),
                                )
                              ],
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),

                    /// who am i
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      child: whoAmIWidget(
                          context: context,
                          downloadCv: () {
                            cubit.launch(url: 'https://drive.google.com/file/d/1K02ioXeBJJHPuffeXTALScn_9wjVCuXV/view?usp=sharing');
                          }),
                    ),

                    /// Services
                    Container(
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
                          serviceCards(),
                        ],
                      ),
                    ),

                    /// Contact with me
                    SizedBox(
                      height: 370,
                      child: Column(
                        children: [
                          /// Get in touch
                          getInTouch(
                            context: context,
                            hireMe: () {
                              cubit.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
                            },
                            portfolio: () {
                              LayoutCubit.get(context).changePage(2);
                            },
                          ),
                          const Divider(
                            thickness: 3,
                            color: Colors.black45,
                          ),
                          contactIcons(
                            context: context,
                            gitHub: () {
                              cubit.launch(url: 'https://github.com/ibrahimMedhat-1');
                            },
                            linkedIn: () {
                              cubit.launch(url: 'https://www.linkedin.com/in/ibrahim-medhat-612043224/');
                            },
                            whatsApp: () {
                              cubit.launch(url: 'https://wa.me/201553708872?text=Hi,%20I%20wanna%20talk%20about%20business.');
                            },
                            faceBook: () {
                              cubit.launch(url: 'https://www.facebook.com/Ibrahimmedha?mibextid=ZbWKwL');
                            },
                            instagram: () {
                              cubit.launch(url: 'https://instagram.com/ibrahemmedhat2014?igshid=MzNlNGNkZWQ4Mg==');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

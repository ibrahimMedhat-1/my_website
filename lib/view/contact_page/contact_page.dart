import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_website/shared/components/contact_widget.dart';
import 'package:my_website/view_model/contact_cubit/contact_cubit.dart';

import '../../shared/components/home_page_widgets.dart';
import '../../shared/style.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactCubit(),
      child: BlocConsumer<ContactCubit, ContactState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ContactCubit cubit = ContactCubit.get(context);
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Contact title
                Container(
                  height: 180,
                  width: double.infinity,
                  color: color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Contact',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
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
                            ' Contact',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                contactMeWidget(
                  icon: Icons.phone,
                  title: 'Call Me',
                  text: '+201553708872',
                  onTap: () {
                    cubit.launch(
                      url: 'tel:+201553708872',
                    );
                  },
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
                        portfolio: () {},
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
          );
        },
      ),
    );
  }
}

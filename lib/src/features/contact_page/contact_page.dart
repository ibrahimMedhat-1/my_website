import 'package:my_website/src/core/config/app_imports.dart';

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
          return BlocConsumer<LayoutCubit, LayoutState>(
            listener: (context, state) {},
            builder: (context, state) {
              LayoutCubit.get(context).changePage(3);
              return Scaffold(
                body: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
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
                                  ' Contact',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      /// phone
                      contactMeWidget(
                        context: context,
                        icon: const Icon(
                          Icons.phone,
                          size: 30,
                        ),
                        title: 'Call Me',
                        text: '+201553708872',
                        onTap: () {
                          cubit.launch(url: 'tel:+201553708872');
                        },
                      ),

                      /// email
                      contactMeWidget(
                        context: context,
                        icon: const Icon(
                          Icons.email,
                          size: 30,
                        ),
                        title: 'Email Me',
                        text: 'ibrahimmedhat112@gmail.com',
                        onTap: () {
                          cubit.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
                        },
                      ),

                      /// location
                      contactMeWidget(
                        context: context,
                        icon: const Icon(
                          Icons.location_on,
                          size: 30,
                        ),
                        title: 'Location',
                        text: 'El-Maadi - Cairo - Egypt',
                        onTap: () {
                          String latitude = '29.956349';
                          String longitude = '31.253370';
                          cubit.launch(
                            url: 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                      const Divider(color: Colors.grey, height: 3),
                      const SizedBox(height: 30),
                      contactMeWidget(
                        context: context,
                        icon: const ImageIcon(
                          AssetImage('assets/contact_icons/whatsapp.png'),
                          size: 30,
                        ),
                        title: 'WhatsApp',
                        text: '+201553708872',
                        onTap: () {
                          cubit.launch(
                              url:
                                  'https://wa.me/201553708872?text=Hi,%20I%20wanna%20talk%20about%20business.');
                        },
                      ),
                      contactMeWidget(
                        context: context,
                        icon: const ImageIcon(
                          AssetImage('assets/contact_icons/linkedin.png'),
                          size: 30,
                        ),
                        title: 'LinkedIn',
                        text: 'https://www.linkedin.com/in/ibrahim-medhat-612043224/',
                        onTap: () {
                          cubit.launch(url: 'https://www.linkedin.com/in/ibrahim-medhat-612043224/');
                        },
                      ),
                      contactMeWidget(
                        context: context,
                        icon: const ImageIcon(
                          AssetImage('assets/contact_icons/github.png'),
                          size: 30,
                        ),
                        title: 'GitHub',
                        text: 'https://github.com/ibrahimMedhat-1',
                        onTap: () {
                          cubit.launch(url: 'https://github.com/ibrahimMedhat-1');
                        },
                      ),
                      contactMeWidget(
                        context: context,
                        icon: const ImageIcon(
                          AssetImage('assets/contact_icons/facebook.png'),
                          size: 30,
                        ),
                        title: 'Facebook',
                        text: 'https://www.facebook.com/Ibrahimmedha?mibextid=ZbWKwL',
                        onTap: () {
                          cubit.launch(url: 'https://www.facebook.com/Ibrahimmedha?mibextid=ZbWKwL');
                        },
                      ),
                      contactMeWidget(
                        context: context,
                        icon: const ImageIcon(
                          AssetImage('assets/contact_icons/instagram.png'),
                          size: 30,
                        ),
                        title: 'Instagram',
                        text: 'https://instagram.com/ibrahemmedhat2014?igshid=MzNlNGNkZWQ4Mg==',
                        onTap: () {
                          cubit.launch(
                              url: 'https://instagram.com/ibrahemmedhat2014?igshid=MzNlNGNkZWQ4Mg==');
                        },
                      ),

                      /// contact  with me
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

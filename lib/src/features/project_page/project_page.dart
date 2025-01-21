import 'package:my_website/src/core/config/app_imports.dart';
import 'package:my_website/src/features/project_page/widgets/grid_item.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isHovered = false;
    final List<Item> items = List.generate(
    10,
    (index) => Item(
    image: 'assets/0e2777f76d7f2c74ba688503be5c2d8d.webp',
    description: 'Mauris primis turpis Laoreet magna felis mi amet quam enim curae. $index',
    ),
    );
    return BlocProvider(
      create: (context) => ProjectsCubit(),
      child: BlocConsumer<ProjectsCubit, ProjectsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return BlocConsumer<LayoutCubit, LayoutState>(
            listener: (context, state) {},
            builder: (context, state) {
              ProjectsCubit cubit = ProjectsCubit.get(context);
              LayoutCubit.get(context).changePage(2);
              return Scaffold(
                body: Stack(
                  children: [
                    Center(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            const SizedBox(height: 40),
                            Column(
                              children: [
                                const Text(
                                  'Projects',
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 300, // Width of the thin line
                                      height: 1, // Height of the thin line
                                      color: Colors.grey, // Color of the thin line
                                    ),
                                    Container(
                                        width: 150, // Width of the thick line
                                        height: 6, // Height of the thick line
                                        color: AppColors
                                            .mainColor // Color of the thick line
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  'Mauris primis turpis Laoreet magna felis mi amet quam enim curae.Sodales  turpis Laoreet magna ',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Mauris primis turpis Laoreet magna felis mi amet quam enim curae. ',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 100),
                              child: SizedBox(
                                height: 600,
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1.2,
                                  ),
                                  itemCount: items.length,
                                  itemBuilder: (context, index) {
                                    return GridItem(item: items[index]);
                                  },
                                ),
                              ),
                            ),




                            // ProjectWidget(
                            //   onTap: () {
                            //     cubit.showProjectDescription('dentist');
                            //   },
                            //   image: 'assets/service_images/ui_ux.png',
                            //   name: 'Dentist Clinic Management',
                            //   type: 'Flutter App (IOS - Android)',
                            //   tools: 'Firebase - Shared Preference',
                            // ),

                            /// contact with me
                            contactWithMe(context),
                          ],
                        ),
                      ),
                    ),
                    // const ProjectDescription(),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
class Item {
  final String image;
  final String description;


  Item({
    required this.image,
    required this.description,

  });
}
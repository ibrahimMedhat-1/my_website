import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_website/shared/components/project_widget.dart';
import 'package:my_website/view_model/layout_cubit/layout_cubit.dart';
import 'package:my_website/view_model/projects_cubit/projects_cubit.dart';

import '../../shared/components/home_page_widgets.dart';
import '../../shared/style.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectsCubit(),
      child: BlocConsumer<ProjectsCubit, ProjectsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ProjectsCubit cubit = ProjectsCubit.get(context);
          return BlocConsumer<LayoutCubit, LayoutState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              LayoutCubit.get(context).changePage(2);
              return Scaffold(
                body: Center(
                  child: SingleChildScrollView(
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
                                'Projects',
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
                                    ' Projects',
                                    style: Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Apps: ',
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        ProjectWidget(
                          onTap: () {},
                          image: 'assets/service_images/ui_ux.png',
                          name: 'ui / ux',
                          type: 'UI App',
                          tools: 'Flutter Firebase',
                        ),

                        /// contact with me
                        contactWithMe(context),
                      ],
                    ),
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

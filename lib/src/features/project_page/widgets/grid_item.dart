import 'package:my_website/src/core/config/app_imports.dart';

import '../project_details.dart';

class GridItem extends StatefulWidget {
  final Item item;

  const GridItem({super.key, required this.item});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  Image.asset(widget.item.image, fit: BoxFit.cover,height: 350,width: 500,),
                  const SizedBox(height: 8),
                  Text(widget.item.description),
                ],
              ),
              if (isHovered)
                Container(
                  width: 500,
                  height: 350,
                  color: Colors.black54,
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const ProjectDetailsPage(),));
                    },
                    child: const Center(
                      child: Text(
                        'View Details',
                        style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

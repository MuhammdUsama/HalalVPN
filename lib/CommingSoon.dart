import 'package:flutter/material.dart';

import 'Utility.dart';


class CommingSoon extends StatefulWidget {

  @override
  _CommingSoonState createState() => _CommingSoonState();
}

class _CommingSoonState extends State<CommingSoon> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: globalKey,

        body: Container(
            height: Responsive.height(100, context),
            width: Responsive.width(100, context),
            color: Colors.white24,
            margin: EdgeInsets.all(12),
            child:
            Column(
              children: [
                Text("Coming Soon",style: TextStyle(fontSize: 20),),
              ],
            )
          // child:  StaggeredGridView.countBuilder(
          //     crossAxisCount: 2,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 12,
          //     itemCount: imageList.length,
          //     itemBuilder: (context, index) {
          //       return InkWell(
          //         child: Container(
          //          // height: Responsive.height(12, context),
          //           decoration: BoxDecoration(
          //               color: Colors.transparent,
          //               borderRadius: BorderRadius.all(
          //                   Radius.circular(15))
          //           ),
          //           child: ClipRRect(
          //             borderRadius: BorderRadius.all(
          //                 Radius.circular(15)),
          //             child: FadeInImage.memoryNetwork(
          //               placeholder: kTransparentImage,
          //               image: imageList[index],fit: BoxFit.cover,),
          //           ),
          //         ),
          //         onTap: (){
          //           print(index);
          //           print(item.type);
          //           // Navigator.push(
          //           //   context,
          //           //   MaterialPageRoute(
          //           //       builder: (context) => Friends()),
          //           //);
          //         },
          //       );
          //     },
          //     staggeredTileBuilder: (index) {
          //       return StaggeredTile.count(1, index.isEven ? 1.2 : 1.2);
          //     }),
        ),
      ),
    );
  }
}

import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:learning_stud/model/curved_appbar.dart';
import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';

class ProfEventsPage extends StatefulWidget {
  @override
  _ProfEventsPageState createState() => _ProfEventsPageState();
}

class _ProfEventsPageState extends State<ProfEventsPage>
    with SingleTickerProviderStateMixin {
  // late TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 2, vsync: this);
  // }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: ClipPath(
            clipper: CustomAppBarClipper(),
            child: AppBar(
              title: Text(
                'Event',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              backgroundColor: Color.fromRGBO(48, 54, 124, 1),
              centerTitle: true,
              leadingWidth: 100,
              leading: IconButton.outlined(
                  icon:
                      const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: ((context) => ProfBottomBar())));
                    //Navigator.pop(context);
                  }),
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/plane_bg.jpeg"),fit: BoxFit.cover)
          ),
          child: Stack(
            children: [
              const SegmentedTabControl(tabs: [
                SegmentTab(
                    label: "Upcoming Event",
                    textColor: Colors.black,
                    selectedTextColor: Colors.white,
                    color: Color.fromRGBO(48, 54, 124, 1),
                    backgroundColor: Colors.white),
                SegmentTab(
                    label: "Post Event",
                    textColor: Colors.black,
                    selectedTextColor: Colors.white,
                    color: Color.fromRGBO(48, 54, 124, 1),
                    backgroundColor: Colors.white),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: TabBarView(children: [
                  ListView(
                    padding: EdgeInsets.all(8.0),
                    children: [
                      EventCard(
                        date: '20 June',
                        description:
                            'Guest lecture on importance of speaking English',
                        imageUrl: 'https://via.placeholder.com/150',
                      ),
                      EventCard(
                        date: '20 June',
                        description:
                            'Guest lecture on importance of speaking English',
                        imageUrl: 'https://via.placeholder.com/150',
                      ),
                    ],
                  ),
                  Container(
                    // color: Colors.amber,
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(90),
//         child: AppBar(
//           bottom: TabBar(
//           controller: _tabController,
//           tabs:const [
//             Tab(
//               child:Text("Upcoming Events",
//               style: TextStyle(
//                 fontSize: 17,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black
//               ),
//               ) ,),
//              Tab(
//               child:Text("Past Event Photo",
//               style: TextStyle(
//                 fontSize: 17,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white
//               ),
//               ) ,),

//           ],
//         ),
//           title: const Text("Event",
//           style: TextStyle(
//             fontSize: 32,
//             fontWeight: FontWeight.w600,
//             color: Color.fromRGBO(255, 255, 255, 1)
//           ),
//           ),
//           backgroundColor: Color.fromRGBO(48, 54, 124, 1),
//           shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(50)
//           )),
//           // BackButton(onPressed: () {
//           //   Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=> HomePage())));
//           // },),
//           leading: IconButton(
//     icon: const Icon(Icons.arrow_back, color: Colors.white),
//     onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context)=>BottomBar())));
//  }
//   // ),

//         ),
//       ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           UpcomingEventsTab(),
//           Center(child: Text('Past Event Photo',
//           style: TextStyle(
//             color: Colors.white
//           ),
//           )),
//         ],
//       ),
//       );

//   }
// }

class UpcomingEventsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        EventCard(
          date: '20 June',
          description: 'Guest lecture on importance of speaking English',
          imageUrl: 'https://via.placeholder.com/150',
        ),
        EventCard(
          date: '20 June',
          description: 'Guest lecture on importance of speaking English',
          imageUrl: 'https://via.placeholder.com/150',
        ),
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  final String date;
  final String description;
  final String imageUrl;

  EventCard(
      {required this.date, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Image.network(imageUrl),
          ListTile(
            title: Text(date),
            subtitle: Text(description),
          ),
        ],
      ),
    );
  }
}

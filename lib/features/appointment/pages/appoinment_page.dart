
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miked_care/features/appointment/widgets/appointment_card.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}


class _AppointmentPageState extends State<AppointmentPage>with TickerProviderStateMixin {

  late TabController tabController;
  @override
  void initState() {
    tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body:
       SafeArea(
         child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 50,),
                Text("Appointment", style:TextStyle(fontWeight: FontWeight.w600,fontSize: 30,),),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    //This is for background color
                      color: Colors.white.withOpacity(0.0),
                      //This is for bottom border that is needed
                      border: Border(bottom: BorderSide(color: Colors.grey, width: 0.8))),
                  child: TabBar(
                    controller: tabController,
                      labelColor: Colors.cyanAccent,
                      unselectedLabelColor: Colors.black,
                      indicatorColor:Colors.cyanAccent ,
                      tabs:[
                        Tab(text: "Upcoming",),
                        Tab(text: "Finished",),
                        Tab(text: "Cancelled",),
                      ]

                      ),
                ),
                 Expanded(
                    // width: double.maxFinite,
                     child:TabBarView(
                    controller: tabController,
                      children:  [
                        UpcomingView(),
                        FinishedView(),

                        CancelledView(),
                      ]
                    )
                  ),


              ],
            ),
          ),
       ),
      );

  }
}

class CancelledView extends StatelessWidget {
  const CancelledView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(6),
      child: ListView.builder(

          physics: ScrollPhysics(),
          // shrinkWrap: true,
          itemCount:3,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){

            return AppointmentCard();
          }),
    );
  }
}

class FinishedView extends StatelessWidget {
  const FinishedView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(6),
      child: ListView.builder(

          physics: ScrollPhysics(),
          // shrinkWrap: true,
          itemCount:10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){

            return AppointmentCard();
          }),
    );
  }
}

class UpcomingView extends StatelessWidget {
  const UpcomingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(6),
      child: ListView.builder(

          physics: ScrollPhysics(),
          // shrinkWrap: true,
          itemCount:10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){

            return AppointmentCard();
          }),
    );
  }
}
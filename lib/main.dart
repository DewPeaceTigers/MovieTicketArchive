import 'package:flutter/material.dart';
import 'package:movie_ticket_hub/pages/add_ticket.dart' as AddTicket;
import 'package:movie_ticket_hub/pages/ticket_hub.dart' as TicketHub;
import 'package:movie_ticket_hub/pages/profile.dart' as Profile;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int page_idx=0;
  List<Widget> pages=[TicketHub.Page(),AddTicket.Page(),Profile.Page()];
  
  @override
  Widget build(BuildContext context) {
    print(page_idx);
    return Scaffold(
      body: Center(
        child: pages[page_idx]
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar:  BottomAppBar(
        child : SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Image.asset('assets/images/icon_ticket.png',height: 20,color: page_idx==0? Color(0xff4667B4):Color(0x994667B4)), alignment: Alignment.center, onPressed: (){setState((){ page_idx=0;});}),
              IconButton(icon: Image.asset('assets/images/icon_add.png',height: 20, color: page_idx==1? Color(0xff4667B4):Color(0x994667B4)), alignment: Alignment.center, onPressed: (){setState((){ page_idx=1;});}),
              IconButton(icon: Image.asset('assets/images/icon_profile.png',height: 20, color: page_idx==2? Color(0xff4667B4):Color(0x994667B4)), alignment: Alignment.center, onPressed: (){setState((){ page_idx=2;});})
            ],
          ),
        )
      )
    );
  }
}

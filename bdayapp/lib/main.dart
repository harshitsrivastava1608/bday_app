import 'package:flutter/material.dart';
import 'dart:async';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home:MyHomePage() //ModalBottomSheet(),
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
  int _counter = 0;final url='assets/img3.jpg';

  nextPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
            (context) =>
            ModalBottomSheet()
        ));
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.amber),),
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
             Expanded(
               flex: 2,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   CircleAvatar(
                     backgroundColor: Colors.white,
                     child: ElevatedButton(child: Text("A B",),onPressed: ()=>nextPage()),
                     radius: 50,
                     //child: Image(),
                   ),
               Padding(padding: EdgeInsets.all(16.0),),
                   CircleAvatar(
                     backgroundColor: Colors.white,
                     child: Image.network('https://www.google.com/logos/doodles/2021/india-independence-day-2021-6753651837109034.2-s.png'),
                     radius: 150.0,
                     //child: Image(),
                   )
                 ],
               ),
             )
           ],
         )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


//import 'package:flutter/material.dart';
class ModalBottomSheet extends StatefulWidget {
  @override
  _ModalBottomSheetState createState() => _ModalBottomSheetState();
}
class _ModalBottomSheetState extends State<ModalBottomSheet> {
  final url='assets/img1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child:Image.network('https://flutter.dev/images/flutter-logo-sharing.png'),
      ),
      appBar: AppBar(
        title: Text(
          'B\'day Boy/Girl',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(url,height: 250,width: 250,),
            Image.network('https://crackberry.com/sites/crackberry.com/files/topic_images/2013/ANDROID.png'),
            //
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                           Image.network('https://i.ytimg.com/vi/OEGm7LXAN_c/maxresdefault.jpg'),

                        ],
                      );
                    });
              },
              padding:
              EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              color: Colors.amber,
              child: Text(
                'Click Me',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
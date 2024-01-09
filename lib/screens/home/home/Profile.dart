import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF5371E9),
          title:Text("Profile",style: TextStyle(),),
          centerTitle: true,
          actions: const [
            IconButton(onPressed: null, icon: Icon(Icons.add_alert, color:Color(0xFF57DC90),)),

          ],
        ),
        drawer: Drawer(
            surfaceTintColor:Color(0xFF57DC90) ,

            child: ListView(
              children: <Widget>[
                DrawerHeader(decoration: BoxDecoration(color:Color(0xFF5371E9),
                ),
                  child: Text("user",style:TextStyle(color: Colors.white,fontSize: 20,
                  ),
                  ),
                ),
                ListTile(leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
                ListTile(leading: Icon(Icons.person),
                  title: Text('Profile'),
                ),

                ListTile(leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],

            )

        ),
        body:
        Padding(
            padding: const   EdgeInsets.fromLTRB(20,10,0,0),
            child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Row(


            children: <Widget>[
              Padding(
              padding: const   EdgeInsets.fromLTRB(0,10,50,0),
              child:
            Expanded(child: Icon(Icons.arrow_back,))
              )
      ],),


                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),
                    child: Image.asset("assets/images/Zom.png",scale: 2,)),

                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),
                    child:Text("Natsu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),)),
                Padding(padding: EdgeInsets.fromLTRB(0,0,0,0),
                    child:Text("Dragnir",style: TextStyle(fontSize: 25),)),


                          ElevatedButton.icon(onPressed: null, icon: Icon(Icons.edit_note), label: Text("Modifier vos informations",)),







              ],
            )
        )
    );
  }
}










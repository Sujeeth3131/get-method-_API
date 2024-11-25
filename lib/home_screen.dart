import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Home_Screen extends StatefulWidget {
  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  var nameController =TextEditingController();
   static const String KEYNAME="name";

  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         TextField(
           controller: nameController,
           decoration: InputDecoration(
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(21))
           ),

         ),
          ElevatedButton(onPressed: () async{
            var name=nameController.text.toString();
            var prefs= await SharedPreferences.getInstance();
            prefs.setString(KEYNAME, nameController.text.toString());

          }, child: Text("Save")),

          Text("Saved Value"),

        ],
      ),
    );
  }

  void getvalue() async{

    var prefs=  await SharedPreferences.getInstance();
    var getName=prefs.getString(KEYNAME);
    prefs .getString(KEYNAME);
   // nameValue = getName!=null ?getName:"No value Saved";

    setState(() {

    });


  }
}

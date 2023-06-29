import 'package:flutter/material.dart';
import 'package:login_app/loginpage.dart';


class ResisterPage extends StatefulWidget {


  @override
  State<ResisterPage> createState() => _ResisterPageState();
}

class _ResisterPageState extends State<ResisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start ,
             children: [
               Image.network("https://img.freepik.com/free-vector/sign-page-abstract-concept-illustration_335657-3875.jpg",
                 height: 400,width: 500,fit: BoxFit.cover,),
               Center(child: Text("Enitial App",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent),
               ),
               ),
               Center(child: Text("Delivery App",style: TextStyle(color: Colors.grey),
               ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Text("Create account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orangeAccent),
                 ),
               ),

               Padding(

                 padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                 child: TextField(
                   decoration: InputDecoration(
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.orangeAccent),
                     ),

                     prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                     labelText: "Name",
                     labelStyle: TextStyle(color: Colors.orangeAccent),

                   ),
                 ),
               ),
               Padding(

                 padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                 child: TextField(
                   decoration: InputDecoration(
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.orangeAccent),
                     ),

                     prefixIcon: Icon(Icons.email,color: Colors.orangeAccent,),
                     labelText: "EMAIL ADDRESS",
                     labelStyle: TextStyle(color: Colors.orangeAccent),

                   ),
                 ),
               ),
               Padding(

                 padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                 child: TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.orangeAccent),
                     ),

                     prefixIcon: Icon(Icons.lock_open,color: Colors.orangeAccent,),
                     labelText: "PASSWORD",
                     labelStyle: TextStyle(color: Colors.orangeAccent),

                   ),
                 ),
               ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
            height: 50,
            width: 500,

            child: ElevatedButton(

              onPressed: (){},

              child: Text("Sumbit",style: TextStyle(fontSize: 15),

              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black
              ),
            ),
        ),
      ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   TextButton(
                     onPressed: (){
                       Navigator.pop(context, MaterialPageRoute(builder: (context) => Loginpage()));
                     },
                     child: Text("Go Back",style: TextStyle(fontSize: 15,color: Colors.black),
                     ),
                   ),
                 ],
               ),
                 ],
           ),
         ),
    );
  }
}

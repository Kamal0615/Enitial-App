import 'package:flutter/material.dart';
import 'package:login_app/resisterpage.dart';

void main(){
  runApp(MaterialApp(home: Loginpage(),));
}


class Loginpage extends StatefulWidget {


  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
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
              child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orangeAccent),
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
            padding: const EdgeInsets.only(right: 10.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){},
                child: Text("Forget Password",style: TextStyle(color: Colors.black54),),
            ),
            ),
          ),Padding(padding: EdgeInsets.all(5)),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                height: 50,
                width: 500,
                
                child: ElevatedButton(

                  onPressed: (){},

                  child: Text("Login to account",style: TextStyle(fontSize: 15),

                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black
                  ),
                  ),
              ),
            ),Padding(padding: EdgeInsets.all(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont'have an account?",style: TextStyle(fontSize: 15),),
                Padding(padding: EdgeInsets.all(5)),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ResisterPage()));
                  },
                  child: Text("Create account",style: TextStyle(fontSize: 15,color: Colors.black),
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





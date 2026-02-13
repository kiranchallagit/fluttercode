import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(loginscreen());
}

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(  
      appBar: AppBar(
      title: Text("Login",style: TextStyle(color: Colors.red),),
      centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),  

       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment:CrossAxisAlignment.center,

         children: [
           Padding(
             padding: const EdgeInsets.fromLTRB(20,0,20,0),
             child: Container(
               height: 400,
               width: 310,

               decoration: BoxDecoration(
                 color: Colors.greenAccent,
                 borderRadius: BorderRadius.circular(20.0),

               ),

               child: Column(
                 children: [
                   Text("login"),
                   SizedBox(
                     height: 10,

                   ),
                   TextField(
                     decoration: InputDecoration(
                       labelText: "Email",
                       hintText:"enter your email",
                       prefixIcon: Icon(Icons.attach_email_outlined),
                       border: OutlineInputBorder(),
                     ),
                   ),
                   SizedBox(
                     height: 10,

                   ),
                   TextField(
                     decoration: InputDecoration(
                       labelText: "Password",
                       hintText:"enter your Password",
                       prefixIcon: Icon(Icons.password_outlined),
                       border: OutlineInputBorder(),
                     ),
                   ),
                     ElevatedButton(onPressed: (){}, child: Text('Login')),
                 ],
               ),
             ),
           ),
         ],

       ),


      ) ,
    );
  }
}

import'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: LoginPage(),
);
}
}

class LoginPage extends StatelessWidget {
final TextEditingController emailController = TextEditingController();
final TextEditingController  mobilenumberController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("sign-up"),
backgroundColor: Colors.green,
),
body: Padding(
padding: EdgeInsets.all(20),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  
 Container(
    height: 100,
    width: 300,
    decoration: BoxDecoration(
      color: Colors.lightGreenAccent,
      image: DecorationImage(image: AssetImage('assets/images/3d-abstract-background.zip')),
    ),


    child: Center(child: Text("kv",style: TextStyle(color: Colors.black,fontSize: 90),)),

  ),
  
TextField(
controller: emailController,
decoration: InputDecoration(
labelText: "Email",
border: OutlineInputBorder(),
),
),
SizedBox(height: 20),

TextField(
controller: mobilenumberController,
obscureText: true,
decoration: InputDecoration(
labelText: "mobilenumber",
border: OutlineInputBorder(),
),
),
SizedBox(height: 20),

TextField(
controller: passwordController,
obscureText: true,
decoration: InputDecoration(
labelText: "password",
border: OutlineInputBorder(),
),
),
SizedBox(height: 20),

  ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: Colors.green,
minimumSize: Size(double.infinity, 50),
),
onPressed: () {
print("Email: ${emailController.text}");
print(" mobilenumber: ${mobilenumberController.text}");
print(" Password: ${passwordController.text}");

},
child: Text("sign-up"),

),
],
),
),
);
}
}
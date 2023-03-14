import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:squip_project/views/dashboard.dart';
import 'package:squip_project/views/login.dart';
import 'package:squip_project/widgets/small_button.dart';
TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class SignUp_Screen extends StatelessWidget {
  const SignUp_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Text("Welcome to Join SQuip ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(),
                child: TextField(
                  controller: emailcontroller,
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      prefixIcon: Icon(Icons.lock_clock_sharp),
                      hintText: 'Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:80.0),
                child: Row(
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login_Screen()));
                        },
                        child: Text("Login"))
                  ],
                ),
              ),
              Small_Button(
                
                title: "Sign Up",
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard_Screen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

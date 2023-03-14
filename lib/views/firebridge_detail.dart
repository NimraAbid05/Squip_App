import 'package:flutter/material.dart';
import 'package:squip_project/views/help.dart';


import '../widgets/button_widget.dart';

class Firebridge_Detail extends StatelessWidget {
  const Firebridge_Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Emergency Call"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmergencyCallScreen(
                        phoneNumber: '16',
                      ),
                    ));
              },
              title: "Fire",
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmergencyCallScreen(
                        phoneNumber: '16',
                      ),
                    ));
              },
              title: "Cylinder Blast",
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmergencyCallScreen(
                        phoneNumber: '16',
                      ),
                    ));
              },
              title: "Short Circuit",
            ),
          ],
        ),
      ),
    );
  }
}

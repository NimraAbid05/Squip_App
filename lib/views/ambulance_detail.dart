import 'package:flutter/material.dart';
import 'package:squip_project/views/help.dart';
import '../widgets/button_widget.dart';

class Ambulance_Detail extends StatelessWidget {
  const Ambulance_Detail({super.key});

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
                      builder: (context) =>
                      EmergencyCallScreen(phoneNumber: '115',),
                    ));
              },
              title: "Medical Emergency",
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EmergencyCallScreen(phoneNumber: '115',),
                    ));
              },
              title: "Fire",
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EmergencyCallScreen(phoneNumber: '115',),
                    ));
              },
              title: "Accident",
            ),
          ],
        ),
      ),
    );
  }
}

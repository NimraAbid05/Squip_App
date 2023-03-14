import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:squip_project/views/ambulance_detail.dart';
import 'package:squip_project/views/firebridge_detail.dart';
import 'package:squip_project/views/policedetails.dart';

import '../widgets/button_widget.dart';


class Dashboard_Screen extends StatelessWidget {
  const Dashboard_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SQuip"),
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
                      builder: (context) => const Police_Detail(),
                    ));
              },
              title: "Police",
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Ambulance_Detail(),
                    ));
              },
              title: "Ambulance",
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Firebridge_Detail(),
                    ));
              },
              title: "Fire Brigade",
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../viewModel/helpViewModel.dart';

class EmergencyCallScreen extends StatelessWidget {
  final String phoneNumber;

  // Constructor that takes in a phone number
  EmergencyCallScreen({required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmergencyCallViewModel>.reactive(
      // Use ViewModelBuilder from the stacked package to build the emergency call screen
      viewModelBuilder: () => EmergencyCallViewModel(phoneNumber: phoneNumber),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Emergency Call'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: model.makePhoneCall,
                child: Text('Call $phoneNumber'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: model.makeEmergencyCall,
                child: model.isBusy
                    ? CircularProgressIndicator()
                    : Text('Send Location'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

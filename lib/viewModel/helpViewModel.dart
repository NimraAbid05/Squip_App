import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import 'package:stacked/stacked.dart';

// Define a ViewModel class that extends BaseViewModel from the stacked package
class EmergencyCallViewModel extends BaseViewModel {
  final String phoneNumber;

  // Constructor that takes in a phone number
  EmergencyCallViewModel({required this.phoneNumber});

  // Function to make a phone call using the url_launcher package
  Future<void> makePhoneCall() async {
    final String call = 'tel:$phoneNumber';
    await launch(call);
  }

  // Function to get the user's current location using the geolocator package
  Future<Position> getCurrentLocation() async {
    // Check if the user has granted permission to access their location
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw 'Location permission denied';
      }
    }

    // Check if the user has permanently denied permission to access their location
    if (permission == LocationPermission.deniedForever) {
      throw 'Location permission permanently denied';
    }

    // Get the user's current location
    return await Geolocator.getCurrentPosition();
  }
  
Future<void> sendLocationToPolice() async {
  // Get current location
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  // Compose email with location information
  String emailBody =
      'I need help! My current location is: https://www.google.com/maps/search/?api=1&query=${position.latitude},${position.longitude}';
  String emailAddress = 'police@example.com';
  String subject = 'Emergency: Need help';

  // Launch email client with pre-populated email fields
  String mailUrl = 'mailto:$emailAddress?subject=$subject&body=$emailBody';
  if (await canLaunch(mailUrl)) {
    await launch(mailUrl);
  } else {
    throw 'Could not launch email client';
  }
}
// Define callback function
void sendLocationCallback() {
  sendLocationToPolice();
}

  // Function to make an emergency call, including the user's current location in the call message
  Future<void> makeEmergencyCall() async {
    try {
      // Set the ViewModel to busy mode while the emergency call is being made
      setBusy(true);

      // Get the user's current location
      Position currentPosition = await getCurrentLocation();

      // Build the emergency call message with the user's current location
      String emergencyMessage =
          'Help! I need your help at my location: ${currentPosition.latitude}, ${currentPosition.longitude}';

      // Make the emergency call using the url_launcher package
      String call = 'tel:15&body=$emergencyMessage';
      await launch(call);
    } catch (e) {
      print(e.toString());
    } finally {
      // Set the ViewModel back to idle mode when the emergency call is finished
      setBusy(false);
    }
   


  }
}

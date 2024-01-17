// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> getDeviceToken() async {
  try {
    String? token = await FirebaseMessaging.instance.getToken();

    // Store the token in a variable or collection:
    // Replace 'myCollection' with your actual collection name
    await FirebaseFirestore.instance
        .collection('myCollection')
        .doc('deviceToken')
        .set({'token': token});

    // Optionally, log the token for debugging:
    print('Device token: $token');
  } catch (error) {
    print('Error retrieving device token: $error');
  }
}

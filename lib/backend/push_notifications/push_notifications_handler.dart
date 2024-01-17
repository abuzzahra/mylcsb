import 'dart:async';

import 'serialization_util.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: const Color(0xFFE7EDF3),
          child: Image.asset(
            'assets/images/logo_long.png',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Login3': ParameterData.none(),
  'Dashboard': ParameterData.none(),
  'Profile': ParameterData.none(),
  'ClaimList': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
          'year': getParameter<String>(data, 'year'),
        },
      ),
  'Leave': (data) async => ParameterData(
        allParams: {
          'staffID': getParameter<String>(data, 'staffID'),
        },
      ),
  'Details01YogaClass': ParameterData.none(),
  'Outstation': (data) async => ParameterData(
        allParams: {
          'staffID': getParameter<String>(data, 'staffID'),
        },
      ),
  'OSView': ParameterData.none(),
  'Notification': ParameterData.none(),
  'dashboard2': ParameterData.none(),
  'ClaimListByYear': ParameterData.none(),
  'LeaveDetail': (data) async => ParameterData(
        allParams: {
          'leaveId': getParameter<String>(data, 'leaveId'),
        },
      ),
  'Home05TravelApp': ParameterData.none(),
  'Details38TransactionHistoryResponsive': ParameterData.none(),
  'Greetings': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
          'carID': getParameter<String>(data, 'carID'),
        },
      ),
  'Form': (data) async => ParameterData(
        allParams: {
          'fillIn': getParameter<String>(data, 'fillIn'),
        },
      ),
  'Info': ParameterData.none(),
  'FormOut': ParameterData.none(),
  'InfoOut': ParameterData.none(),
  'Scan': (data) async => ParameterData(
        allParams: {
          'scannedValue': getParameter<String>(data, 'scannedValue'),
        },
      ),
  'CarInfo_Available': ParameterData.none(),
  'CarInfo_Inused': ParameterData.none(),
  'claimDetail': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}

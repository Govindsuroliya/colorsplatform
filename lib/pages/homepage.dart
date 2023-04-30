import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  String? Strpt;
  Color? colorpt;

  // ignore: non_constant_identifier_names
  String PlatformInFO() {
    if (Platform.isAndroid == true) {
      colorpt = Colors.green;
      return "Android";
    } else if (Platform.isIOS == true) {
      colorpt = Colors.blue;
      return "iOS";
    } else if (Platform.isMacOS == true) {
      colorpt = Colors.grey;
      return "MacOS";
    } else if (Platform.isLinux == true) {
      colorpt = Colors.orange;
      return "Linux";
    } else if (Platform.isWindows == true) {
      colorpt = Colors.grey;
      return "Windows";
    } else if (kIsWeb == true) {
      colorpt = Colors.yellow;
      return "WEB";
    } else {
      colorpt = Colors.white;
      return 'Unknown';
    }
  }

  void checkpt() {
    Strpt = PlatformInFO();
  }

  @override
  void initState() {
    super.initState();
    Strpt = PlatformInFO();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You Are Operating on $Strpt',
              style: const TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: checkpt,
              child: const Text("Check Again"),
            )
          ],
        )),
        backgroundColor: colorpt);
  }
}

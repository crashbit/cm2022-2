import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/home_page.dart';
import 'page/fingerprint_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Muguerza',
      initialRoute: 'login',
      routes:{
        'login': ( _ ) => FingerprintPage(),
        'home': ( _ ) => HomePage(),
      },
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.grey[300]
      ),
    );

  }
}

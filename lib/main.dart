import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:xian_infotech_interview/login_screen/provider/login_screen_provider.dart';
import 'package:xian_infotech_interview/welcome_screen/view/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // The below code is for lock the application to portrait-up and portrait-down
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: const TextScaler.linear(1.0),
      ),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => LoginScreenProvider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
          ),
          home: const WelcomeScreen(),
        ),
      ),
    );
  }
}

import 'package:ai_quizzy/constants/constants.dart';
import 'package:ai_quizzy/controller/user_provider.dart';
import 'package:ai_quizzy/routes/app_route_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<UserProvider>(create: (context) => UserProvider())
      ],
      child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: accentColor),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: RouteConfig.returnRouter(false)),
    );
  }
}

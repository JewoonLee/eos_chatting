import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:eos_chatting/screens/main_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eos_chatting/screens/chat_screen.dart';
import 'package:eos_chatting/config/color_service.dart';
import 'package:eos_chatting/config/palette.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
// flutter core 초기화
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      const
      MaterialApp(
          debugShowCheckedModeBanner:false,
          home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chatting App',
        theme: ThemeData(
        primarySwatch:
      // primary 색을 우리가 만든 색으로!
        ColorService.createMaterialColor(Color(0xFF1CAF49)),
          ),
        home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData)
          {
            return ChatScreen();
          }
        return LoginSignUpScreen();
  },
  ),
  ); // home: ChatScreen());
}
}

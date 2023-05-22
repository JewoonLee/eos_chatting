import 'package:eos_chatting/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:js';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var _authentication = FirebaseAuth.instance;
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat screen'),
          actions: [
            IconButton(
                onPressed: () {
                  _authentication.signOut();
                },
                icon: Icon(Icons.exit_to_app_rounded, color:
                Colors.white))
          ],
          backgroundColor: Palette.eosColor,
        ),
        body: Container(
// TODO : 아래 틀에 맞게 message와 new message를 알맞게 배치해 보세요! Message는 Expanded로 감싸주세요!
        child: 어쩌구 (children: [
        어쩌구, 어쩌구
        ],
        )));
  }
}
final _authentication = FirebaseAuth.instance;
// login 과 signup의 state 저장
bool isSignupScreen = true;
String userName = '';
String userEmail = '';
String userPassword = '';

AnimatedPositioned(
child: Center(
child: Container(
child: GestureDetector(
onTap: () async {// todo : 여기에! } ,
child: Container(//기존코드 그대로
))))),
if (isSignupScreen) {
try {
final newUser = await _authentication
    .createUserWithEmailAndPassword(
email: userEmail,
password: userPassword);
// user id 저장
await FirebaseFirestore.instance
    .collection('user')
    .doc(newUser.user!.uid)
    .set({
'userName': userName,
'email': userEmail,
});
if (newUser.user != null) {
Navigator.push(context,
MaterialPageRoute(builder: (context) {
return ChatScreen();
}));
}
} catch (e) {
print(e);
ScaffoldMessenger.of(context)
    .showSnackBar(SnackBar(
content: Text(
'Please check your email and password'),
backgroundColor: Colors.blue,
));
}
}
if (!isSignupScreen) {
try {
final newUser = await _authentication
    .signInWithEmailAndPassword(
email: userEmail,
password: userPassword);
if (newUser.user != null) {}
} catch (e) {
print(e);
}
}
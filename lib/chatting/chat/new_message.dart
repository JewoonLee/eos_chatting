
import 'dart:js';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/palette.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final TextEditingController _controller = TextEditingController();
  String _userEnteredMessage = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.all(8),
// TODO : margin은 top 8, padding은 전체 8,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                maxLines: null,
                controller: _controller,
                decoration: InputDecoration(labelText: 'Send a messae ...'),
                onChanged: (value) {
                  setState(() {
                     _userEnteredMessage = value.trim();
                  });
// TODO : state를 바꿔줘야 합니다! - state는 위에서 적은 변수겠죠?
                },
              ),
            ),
            IconButton(
                onPressed:_userEnteredMessage.isEmpty ? null : _sendMessage,
                //TODO : trim함수를 사용해서 아무것도 없으면 null, 있으면 _sendMessage 함수 호출
                icon: Icon(Icons.send),
                color: Palette.eosColor)
          ],
        ));
  }
  void _sendMessage() async {
    FocusScope.of(context as BuildContext).unfocus();
    final user = FirebaseAuth.instance.currentUser;
    final userData = await FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get(); // TODO : FirebaseFirestore의 user collection의 user.uid를 가져오기 (마지막에 get 사용)
    FirebaseFirestore.instance.collection('chat').add({
      'text': _userEnteredMessage,
      'time': Timestamp.now(),
      'userId': user!.uid,
      'userName': userData.data()!['userName']
  });
}

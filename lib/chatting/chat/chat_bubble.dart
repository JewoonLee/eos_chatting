import 'package:eos_chatting/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String userName;

  const ChatBubble(this.message, this.isMe, this.userName, {Key? key})
      : super(key: key);

//TODO 1 : 변수를 final로 선언
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: isMe ? 5.0 : 0.0,
            right: isMe ? 0.0 : 5.0, // TODO 3 : 나일때랑 아닐때 나누기, padding은 5
          ),
          child: Column // TODO 4: Column 또는 Row
            (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isMe)
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    userName,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
// TODO 5: 내가 아닐때는 닉네임이 위에 있어야겠죠? 왼쪽에 padding 10, 색은 grey
              Container(
                  decoration: BoxDecoration(
                    color: isMe ? Colors.lightGreen : Colors.black12,
                    //TODO 6: 나일때는 lightGreen, 아닐때는 black12
                    borderRadius: isMe ? BorderRadius.only() : BorderRadius
                        .only(),
                  ),
//TODO 7: 디자인을 보고 한번 해보세요 (나일떄, 아닐때 구분하기!)),
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery
                          .of(context)
                          .size
                          .width * 0.7
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 16.0),
                  margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
// TODO 8: padding은 위아래 10, 좌우 16, margin은 위아래 4, 좌우 8
                  child: Text(
                    message,
                    style: TextStyle(color: isMe ? Colors.white : Colors
                        .black), // TODO 9: 색은 나일때는 흰색, 아닐때는 검은색
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
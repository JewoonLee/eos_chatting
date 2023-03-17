import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  late String isSignupScreen="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO : background color로 palette의 backgroundColor 설정,
      backgroundColor: Palette.backgroundColor,
      body: Stack(
          children: [
            Positioned(
            // TODO : top, left, right 모두0으로 설정
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                // TODO : height 300으로 설정
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // TODO : background.png 넣기
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill
                  ),
                ),
              child: Container(
                // TODO : padding top 90, left 20
                padding: EdgeInsets.only(top:90, left: 20,),
                child: Column(
                  // TODO : 왼쪽 정렬,
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                        // TODO : letter spacing 1.0, font size 25, color white
                          text: 'Welcome',
                          style: TextStyle(
                            letterSpacing: 1.0, fontSize: 25, color: Colors.white),
                          children: [
                            TextSpan(
                            // TODO : letter spacing 1.0, font size 25, color white, bold
                              text: ' to EOS chat',
                              style: TextStyle(
                                letterSpacing: 1.0, fontSize: 25, color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          ]
                        )
                     ),
                    SizedBox()  ,
                    Text('Signup to continue',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              )
            ),
            Positioned(// TODO : top 150
              top:150,
              child: Container(// TODO : height 280.0, padding 모두 20, width 핸드폰 가로 길이 – 40
                                // TODO : margin 가로로 양쪽 20
                height: 280.0,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(// TODO : color white, border radius 15
                  color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(// TODO : color black, 투명도 0.3, blur radius 15, spread radius 5
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Row(// TODO : mainAxisAlignment.spaceAround
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Column(
                          children: [
                             Text(
                              // TODO : font size 16, bold
                              // TODO : palette의 textcolor1
                               'LOGIN',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color: Palette.textColor1
                               ),
                              ),
                            Container(
                            // TODO : margin top만 3, height 2, width 55, color green
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 55,
                              color: Colors.green
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Column(
                          children: [
                            Text(
                              // TODO : font size 16, bold
                              // TODO : palette의 active colo
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Palette.activeColor
                              ),
                            ),
                          Container(
                            // TODO : margin top만 3, height 2, width 55, color green
                            margin: EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.green,
                            )
                          ],
                        )
                      )
                    ],
                    ),
                    Container(
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                prefixIcon: Icon(Icons.account_circle_outlined, color: Palette.iconColor,),
                                enabledBorder: OutlineInputBorder(
                                  // TODO : borderside 색은 palette의 textColot1
                                  // TODO : border radius는 모두 35
                                  borderSide: BorderSide(color: Palette.textColor1),
                                  borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                focusedBorder: OutlineInputBorder(
                                  // TODO : borderside 색은 palette의 textColot1
                                  // TODO : border radius는 모두 35
                                  borderSide: BorderSide(color: Palette.textColor1),
                                  borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                              ),
                            )
                          ]
                        ),
                      )
                    )
                  ]
                ),
              )
            )
          ],
      )
    );
  }
}




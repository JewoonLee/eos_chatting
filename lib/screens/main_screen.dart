import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  late String isSignupScreen="";
  bool _isLoginButtonPressed = true;
  bool _isSignupButtonPressed = false;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
          children:   [
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
                    fit: BoxFit.fill),),
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
                          children: _isLoginButtonPressed == true
                            ? [
                            TextSpan(
                              // TODO : letter spacing 1.0, font size 25, color white, bold
                                text: ' back',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,))]
                              :[
                            TextSpan(
                              // TODO : letter spacing 1.0, font size 25, color white, bold
                              text: ' to EOS chat',
                              style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,))]
              )),
                    SizedBox(),
                    Text( _isSignupButtonPressed== true ? 'Signin to continue' : 'Signup to continue',
                      style: TextStyle(color: Colors.white),
                    )],),),)),
            AnimatedPositioned(// TODO : top 150
              duration: Duration( milliseconds:500),
              curve: Curves.easeIn,
              top:150,
              child: AnimatedContainer(
                duration: Duration( milliseconds:500),
                curve: Curves.easeIn,
                // TODO : height 280.0, padding 모두 20, width 핸드폰 가로 길이 – 40
                // TODO : margin 가로로 양쪽 20
                height: _isLoginButtonPressed == true ? 250.0 : 280.0,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(// TODO : color white, border radius 15
                  color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(// TODO : color black, 투명도 0.3, blur radius 15, spread radius 5
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,)]),
                child: Column(
                  children: [
                    Row(// TODO : mainAxisAlignment.spaceAround
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isLoginButtonPressed = true;
                            _isSignupButtonPressed = false;
                          });
                        },
                        child: Column(
                          children: [
                             Text(
                              // TODO : font size 16, bold
                              // TODO : palette의 textcolor1
                               'LOGIN',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color: _isLoginButtonPressed==true ? Palette.activeColor: Palette.textColor1
                               ),
                              ),
                            Container(
                            // TODO : margin top만 3, height 2, width 55, color green
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 55,
                              color: _isLoginButtonPressed==true ? Colors.green : null)
                          ],
                        ),),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isLoginButtonPressed = false;
                            _isSignupButtonPressed = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              // TODO : font size 16, bold
                              // TODO : palette의 active colo
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: _isSignupButtonPressed ==true ? Palette.activeColor : Palette.textColor1),),
                          Container(
                            // TODO : margin top만 3, height 2, width 55, color green
                            margin: EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: _isSignupButtonPressed == true? Colors.green:null )],))],),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Form(
                        child: Column(
                          children: _isLoginButtonPressed==true
                          ?[

                            TextFormField(
                              decoration: InputDecoration(
                                  // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                prefixIcon: Icon(Icons.email, color: Palette.iconColor,),
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
                              hintText: 'email'),),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                prefixIcon: Icon(Icons.lock, color: Palette.iconColor,),
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
                                hintText: 'password'
                              ),)
                          ]:[
                            TextFormField(
                              decoration: InputDecoration(
                                // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                prefixIcon: Icon(Icons.account_circle, color: Palette.iconColor,),
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
                              hintText: 'User name'),),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                prefixIcon: Icon(Icons.email, color: Palette.iconColor,),
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
                              hintText: 'email'),),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                prefixIcon: Icon(Icons.lock, color: Palette.iconColor,),
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
                              hintText: 'password'),)
                          ]
                        ),))]),)),
            AnimatedPositioned(
                duration: Duration( milliseconds:500),
                curve: Curves.easeIn,
                top: _isLoginButtonPressed == true ? 350 : 390,
                right:0,
                left:0,
                child: Center(
                    child: Container(// TODO : padding은 모두 15, height 90, width 90
                    padding: EdgeInsets.all(15),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.lightGreen, Colors.green],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1))]),
                    child: Icon(
                        Icons.arrow_forward_sharp, color: Colors.white,
                    // TODO : 화살표 icon, 색은 하얀색
                      ))))),
        Positioned(
          top: MediaQuery.of(context).size.height - 125,
          right: 0,
          left: 0,
        // TODO : top은 핸드폰 세로길이에서 – 125, right 0, left 0
          child: Column(
            children: [
              Text('or Signin with'),
              SizedBox(height: 10),
              // TODO : LOGIN 누르면 ‘or Signin with’
              // SIGNUP 누르면 ‘or Signin with’
              // SizedBox height 10으로 사이 공간 주기
              TextButton.icon(
                onPressed: () {},
                  icon:Icon(Icons.add),
                  label: Text('Google'),
                  style: TextButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(155, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: Colors.blue)

                  // TODO : 배경색은 palette의 googleColor
                  // TODO : 더하기 아이콘 넣고 ‘Google’ 쓰기
    ),]))]),);}
}




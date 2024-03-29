import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/HomeScreen.dart';
import 'package:plotagonist/Screen/choose_muse_screen.dart';
import 'package:plotagonist/Screen/finish_social_register.dart';
import 'package:plotagonist/Screen/forgot_password.dart';
import 'package:plotagonist/Screen/register.dart';
import 'package:plotagonist/generated/l10n.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: NewForm()),
    );
  }
}

class NewForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(18)),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).login,
                style: GoogleFonts.lato(
                  color: Color(
                    0xffed8a19,
                  ),
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: ScreenUtil().setWidth(28),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          Register(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Text(
                  S.of(context).register,
                  style: GoogleFonts.lato(
                    color: Color(
                      0xff4c4c4c,
                    ),
                    fontSize: ScreenUtil().setSp(12),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(65),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                child: Image.asset(
                  'assets/images/login_logo.png',
                  width: ScreenUtil().setWidth(192),
                  height: ScreenUtil().setHeight(180),
                ),
              ),
              Text(
                "Build v.1.1.0",
                style: TextStyle(
                  color: Color(
                    0xff4c4c4c,
                  ),
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Helvetica Neue",
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 48),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: ScreenUtil().setHeight(24),
                  child: Text(
                    S.of(context).emailAddress,
                    style: GoogleFonts.lato(
                      color: Color(
                        0xffed8a19,
                      ),
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(30),
                  child: TextFormField(
                    maxLines: 1,
                    style: GoogleFonts.lato(
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    ),
                    decoration: InputDecoration(
                      hintText: S.of(context).youyouremailcom,
                      hintStyle: GoogleFonts.lato(
                        color: Color(
                          0xffababab,
                        ),
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      border: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                Container(
                  height: ScreenUtil().setHeight(24),
                  child: Text(
                    S.of(context).password_hint,
                    style: GoogleFonts.lato(
                      color: Color(
                        0xffed8a19,
                      ),
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(30),
                  child: TextFormField(
                    obscureText: true,
                    style: GoogleFonts.lato(
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    ),
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '•••••••••',
                      hintStyle: GoogleFonts.lato(
                        color: Color(
                          0xffababab,
                        ),
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      border: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(12)),
                    alignment: Alignment.center,
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.all(0),
                      height: ScreenUtil().setHeight(32),
                      color: Color(
                        0xffed8a19,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      minWidth: ScreenUtil().setWidth(134),
                      child: Text(
                        S.of(context).logInBtn,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: ScreenUtil()
                              .setSp(15, allowFontScalingSelf: false),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(63),
                ),
                Center(
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ChooseMuse()));
                    },
                    height: ScreenUtil().setHeight(30),
                    child: Text(
                      S.of(context).forgotYourPassword,
                      style: GoogleFonts.lato(
                        color: Color(
                          0xff4c4c4c,
                        ),
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(52),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        customBorder: new CircleBorder(),
                        child: Image.asset(
                          'assets/images/facebook_logo.png',
                          width: ScreenUtil().setWidth(42),
                          height: ScreenUtil().setHeight(42),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FinishRegister()));
                        },
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FinishRegister()));
                        },
                        child: Image.asset(
                          'assets/images/google_logo.png',
                          width: ScreenUtil().setWidth(42),
                          height: ScreenUtil().setHeight(42),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FinishRegister()));
                        },
                        child: Image.asset(
                          'assets/images/twitter_logo.png',
                          width: ScreenUtil().setWidth(42),
                          height: ScreenUtil().setHeight(42),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FinishRegister()));
                        },
                        child: Image.asset(
                          'assets/images/apple_logo.png',
                          width: ScreenUtil().setWidth(42),
                          height: ScreenUtil().setHeight(42),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  String email, password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 768,
      child: Material(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xffe7e7e7),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
        ),
      ),
    );
  }
}

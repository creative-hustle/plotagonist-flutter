import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:plotagonist/Screen/share_screen.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookWallpaper extends StatefulWidget {
  final author;
  final title;

  BookWallpaper(this.author, this.title);

  @override
  _BookWallpaperState createState() => _BookWallpaperState();
}

class _BookWallpaperState extends State<BookWallpaper>
    with TickerProviderStateMixin {
  String path = 'assets/images/3.jpeg';
  String img1 = 'assets/images/3.jpeg';
  String img2 = 'assets/images/4.jpeg';
  bool _isInAsyncCall = false;
  bool pos = true;
  Animation<double> animation;
  Animation<double> animation2;
  AnimationController animationController;
  AnimationController animationController2;

  void showOverlay() {
    setState(() {
      _isInAsyncCall = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isInAsyncCall = false;
      });
    });
  }

  _changeImg(String req) {
    setState(() {
      path = req;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    animation =
        Tween<double>(begin: 0, end: 320.0.h).animate(animationController)
          ..addListener(() {
            setState(() {});
          });
    animation2 =
        Tween<double>(begin: 0, end: -340.0.h).animate(animationController)
          ..addListener(() {
            setState(() {});
          });
  }

  updatePosition(bool position) {
    if (position == true) {
      animationController.forward();
      setState(() {
        pos = false;
      });
    } else {
      animationController.reverse();
      setState(() {
        pos = true;
      });
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: GoogleFonts.lato(
                    color: AppTheme.txtappBar,
                    fontSize: 18.sp,
                    letterSpacing: 0.5),
              ),
            ),
          ],
        ),
        middle: Text(
          'Create New Plot',
          style: GoogleFonts.lato(
              color: Colors.black, fontSize: 18.sp, letterSpacing: 0.5),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => ShareScreen()));
          },
          child: Text(
            'Save',
            style: GoogleFonts.lato(
                color: AppTheme.txtappBar, fontSize: 18.sp, letterSpacing: 0.5),
          ),
        ),
      ),
      //resizeToAvoidBottomInset: true,
      body: Container(
        margin: EdgeInsets.only(left: 15.h, top: 10.h, right: 15.h),
        child: ModalProgressHUD(
          opacity: 0.9,
          inAsyncCall: _isInAsyncCall,
          progressIndicator: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircularProgressIndicator(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Text(
                  'Loading new cover image',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                child: Image(
                  image: AssetImage(path),
                  height: 465.h,
                  width: 345.w,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 10.h,
                left: 10.h,
                bottom: 0.h,
                right: 10.h,
                child: Container(
                  padding: EdgeInsets.only(top: 10.h, left: 13.h),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, animation.value),
                child: Container(
                  margin: EdgeInsets.only(left: 20.h, top: 15.h, right: 15.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.author,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                height: 1),
                          ),
                          GestureDetector(
                            onTap: () {
                              updatePosition(pos);
                            },
                            child: Container(
                              padding: EdgeInsets.all(8.h),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppTheme.appBarCoin),
                              child: Icon(
                                pos == true
                                    ? Icons.arrow_downward
                                    : Icons.arrow_upward,
                                color: Colors.white,
                                size: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0.h,
                left: 0.8.h,
                right: 0.8.h,
                child: Transform.translate(
                  offset: Offset(0, animation2.value),
                  child: Container(
                    padding: EdgeInsets.all(10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: ButtonTheme(
                            height: 40.h,
                            minWidth: 48.h,
                            child: RaisedButton(
                              padding: EdgeInsets.all(0),
                              color: Colors.white,
                              textColor: AppTheme.notifyColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.r),
                              ),
                              child: Text(
                                '<<',
                                style: GoogleFonts.lato(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              onPressed: () {
                                _changeImg(img1);
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Flexible(
                          flex: 5,
                          child: Container(
                            height: 40.h,
                            child: TextFormField(
                              autofocus: true,
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.only(left: 18.w),
                                border: new OutlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: AppTheme.appBarColor),
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                hintText: 'Empty Streets',
                                hintStyle: GoogleFonts.lato(
                                    fontSize: 13.sp, letterSpacing: 0.5),
                                suffixIcon: Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      showOverlay();
                                    },
                                    child: Image.asset(
                                      "assets/images/in_search.png",
                                      width: 24.w,
                                      height: 24.h,
                                    ),
                                  ),
                                ),
                              ),
                              style: GoogleFonts.lato(
                                  color: AppTheme.txtColor,
                                  fontSize: 13.sp,
                                  letterSpacing: 0.5),
                              onEditingComplete:
                                  FocusScope.of(context).requestFocus,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: ButtonTheme(
                              height: 40.h,
                              minWidth: 48.h,
                              child: RaisedButton(
                                padding: EdgeInsets.all(0),
                                color: Colors.white,
                                textColor: AppTheme.notifyColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.r),
                                ),
                                child: Text(
                                  '>>',
                                  style: GoogleFonts.lato(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                onPressed: () {
                                  _changeImg(img2);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

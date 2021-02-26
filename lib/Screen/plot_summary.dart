import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/send_invites.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlotSummary extends StatefulWidget {
  @override
  _PlotSummaryState createState() => _PlotSummaryState();
}

class _PlotSummaryState extends State<PlotSummary> {
  bool visibilityPopUp = true;

  void _changed(bool visibility) {
    setState(() {
      visibilityPopUp = visibility;
    });
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
                    fontSize: 17.sp,
                    letterSpacing: 0.5),
              ),
            ),
          ],
        ),
        middle: Text(
          'Plot Summary',
          style: GoogleFonts.lato(
              color: Colors.black, fontSize: 17.sp, letterSpacing: 0.5),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SendInvites()));
          },
          child: Text(
            'Skip',
            style: GoogleFonts.lato(
                color: AppTheme.txtappBar, fontSize: 17.sp, letterSpacing: 0.5),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              visibilityPopUp
                  ? Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 25.w, right: 13.w, top: 15.h),
                          padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
                          child: Container(
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 14.w,
                                  top: 8.h,
                                  bottom: 10.h,
                                  right: 12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'What’s your story about?',
                                    style: GoogleFonts.lora(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp,
                                        letterSpacing: 0.5,
                                        color: AppTheme.txtColor),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    'Please try to summarise what your story is about. It’s important to have the core of your story early on, so you never lose track of your North Star. Think about it like the short summary at the back of the books you have read.',
                                    style: GoogleFonts.lora(
                                        fontSize: 12.sp,
                                        letterSpacing: 0.5,
                                        color: AppTheme.txtColor),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  centerSlice: Rect.fromLTWH(27, 27, 27, 27),
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/chat_bg.png")),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  blurRadius: 5,
                                  offset: Offset(1, 1), // Shadow position
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 14.w, top: 15.h),
                            child: ClipOval(
                              child: Image(
                                image: AssetImage('assets/images/6.jpeg'),
                                height: 34.h,
                                width: 34.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 7.w,
                          top: 7.h,
                          child: GestureDetector(
                            onTap: () {
                              _changed(false);
                            },
                            child: Image(
                              image: AssetImage('assets/images/close.png'),
                              height: 20.h,
                              width: 20.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              Container(
                margin: EdgeInsets.only(
                  top: 10.h,
                  left: 18.w,
                  right: 18.w,
                  bottom: 30.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Story Summary'.toUpperCase(),
                      style: GoogleFonts.lato(
                          fontSize: 12.sp,
                          letterSpacing: 0.5,
                          color: AppTheme.appBarCoin),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                      autofocus: true,
                      style: GoogleFonts.lato(
                        fontSize: 16.sp,
                        letterSpacing: 0.5,
                      ),
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 6.h, horizontal: 0.0),
                        hintText: 'Please enter story summary',
                        hintStyle: GoogleFonts.lato(
                            color: Colors.grey, fontSize: 16.sp),
                        fillColor: AppTheme.appBarCoin,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppTheme.appBarCoin),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SendInvites()));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 7.h),
                  margin: EdgeInsets.only(
                    bottom: 30.h,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3.r)),
                      color: AppTheme.appBarCoin,
                      border: Border.all(color: AppTheme.appBarCoin)),
                  child: Text(
                    'NEXT STEP',
                    style: GoogleFonts.lato(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double width = size.width;
    final double height = size.height;
    final double startMargin = width / 15;

    final double s1 = height * 0.2;
    final double s2 = height * 0.1;
    final Path path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(startMargin, 0.2, width - startMargin, height),
          const Radius.circular(6)))
      ..lineTo(startMargin, s1)
      ..lineTo(6.0, size.height / 8)
      ..lineTo(startMargin, s2)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

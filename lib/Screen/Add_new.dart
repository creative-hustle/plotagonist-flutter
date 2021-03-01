import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/allocate_media.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plotagonist/generated/l10n.dart';

class AddNew extends StatefulWidget {
  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  TextEditingController ctrl;
  List<String> users = ['Naveen ', 'Ram', 'Satish', 'Some Other'], words = [];
  String str = '';
  List<String> coments = [];
  Color color = AppTheme.txtColor;

  @override
  void initState() {
    super.initState();
    ctrl = TextEditingController();
  }

  showProfile(String s) {
    showDialog(
        context: context,
        builder: (con) => AlertDialog(
            title: Text('Profile of $s'),
            content: Text('Show the user profile !')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w),
                  child: Center(
                    child: CupertinoActionSheet(
                      title: Column(
                        children: [
                          Text(
                            S.of(context).addAttachment,
                            style: GoogleFonts.lato(
                              fontSize: 17.sp,
                                fontWeight: FontWeight.w800, color: Colors.black),
                          ),
                          SizedBox(height: 10.h,),
                          Text(
                            S.of(context).pleaseSelectTheLocationOfTheMediaYouWantTo,
                            style:  GoogleFonts.lato(color: Colors.black, fontSize: 13.sp,),
                          )
                        ],
                      ),

                      actions: [
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              S.of(context).camera,
                              style: GoogleFonts.lato(
                                  fontSize: 17.sp,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              S.of(context).mediaLibrary,
                              style: GoogleFonts.lato(
                                  fontSize: 17.sp,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              S.of(context).files,
                              style: GoogleFonts.lato(
                                  fontSize: 17.sp,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              S.of(context).unsplashPhotos,
                              style: GoogleFonts.lato(
                                  fontSize: 17.sp,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              S.of(context).cancel,
                              style: GoogleFonts.lato(
                                  fontSize: 17.sp,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                );
              });
        },
        child: Image.asset(
          'assets/images/ic_attch.png',
          width: ScreenUtil().setWidth(28),
          height: ScreenUtil().setHeight(32),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                S.of(context).cancel,
                style: GoogleFonts.lato(
                    color: AppTheme.txtappBar,
                    fontSize: 17.sp,
                    letterSpacing: 0.5),
              ),
            ),
          ],
        ),
        middle: Text(
          S.of(context).addNew,
          style: GoogleFonts.lato(
              color: Colors.black, fontSize: 17.sp, letterSpacing: 0.5),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => AllocateMedia()));
          },
          child: Text(
            S.of(context).save,
            style: GoogleFonts.lato(
                color: AppTheme.txtappBar, fontSize: 17.sp, letterSpacing: 0.5),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 14.w,
                    right: 14.w),
                child: Center(
                  child: TextFormField(
                    autofocus: true,
                    style: GoogleFonts.lato(fontSize: 17.sp),
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 0.0),
                      hintText:
                          S.of(context).addTitleToCreateChapterUseForAutomaticNumbering,
                      hintStyle: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 17.0.sp,
                      ),
                      border: InputBorder.none,
                      fillColor: AppTheme.appBarCoin,
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).nextFocus();
                    },
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xffE4E4E4),
                height: 42.h,
                padding: EdgeInsets.only(left: 15.w),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 25.h,
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(14.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 5,
                            offset: Offset(1, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Text(
                        S.of(context).outline,
                        style: GoogleFonts.lato(
                            color: AppTheme.appBarCoin, fontSize: 12.sp),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25.h,
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(14.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 5,
                            offset: Offset(1, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Text(
                        S.of(context).draft,
                        style: GoogleFonts.lato(
                            color: AppTheme.txtColor, fontSize: 12.sp),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25.h,
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(14.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 5,
                            offset: Offset(1, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Text(
                        S.of(context).edited,
                        style: GoogleFonts.lato(
                            color: AppTheme.txtColor, fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 14.w,
                    right: 14.w),
                child: TextFormField(
                  controller: ctrl,
                  autofocus: true,
                  maxLines: 2,
                  style: GoogleFonts.lato(
                    color: color,
                    fontSize: 16.sp,
                      letterSpacing: 0.5

                  ),
                  decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0.0),
                    hintText:
                        S.of(context).titleInstructions,
                    hintStyle: GoogleFonts.lato(
                      color: Colors.grey,
                      fontSize: 13.sp,
                      letterSpacing: 0.5
                    ),
                    border: InputBorder.none,
                    fillColor: AppTheme.appBarCoin,
                  ),
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus();
                  },
                  onChanged: (val) {
                    setState(() {
                      words = val.split(' ');
                      str = words.length > 0 &&
                              words[words.length - 1].startsWith('@')
                          ? words[words.length - 1]
                          : '';

                      print(val.toString());
                      print(users[0].toString());
                      if (val.toString() == users[0]) {
                        setState(() {
                          print('yes');
                          color = AppTheme.appBarCoin;
                        });
                      } else {
                        setState(() {
                          print('No');
                          color = AppTheme.txtColor;
                        });
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

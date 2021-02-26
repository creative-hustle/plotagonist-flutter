import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:plotagonist/Models/media_models.dart';
import 'package:plotagonist/Screen/start_screen.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllocateMedia extends StatefulWidget {
  @override
  _AllocateMediaState createState() => _AllocateMediaState();
}

class _AllocateMediaState extends State<AllocateMedia> {
  int _selectedIndex = -1;
  int listLength = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.clippathColor,
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
          'Allocate Media 1/1',
          style: GoogleFonts.lato(
              color: Colors.black, fontSize: 17.sp, letterSpacing: 0.5),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => StartScreen('1')));
          },
          child: Text(
            'Next',
            style: GoogleFonts.lato(
                color: AppTheme.txtappBar, fontSize: 17.sp, letterSpacing: 0.5),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.r),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/a1.jpeg'),
                      height: 160.h,
                      width: 160.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 22.h, left: 48.w, right: 48.w),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'To which card(s) do you want to allocate this media item?',
                        style: GoogleFonts.lato(
                            fontSize: 15.sp,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 0.5),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.r),
                        ),
                        color: AppTheme.greyBg,
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                      child: Text(
                        '#home',
                        style: GoogleFonts.lato(
                            color: AppTheme.appBarCoin, fontSize: 16.sp),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 30.h,
                margin: EdgeInsets.only(top: 25.h),
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                color: AppTheme.appBackgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'ALL CARDS',
                          style: GoogleFonts.lato(
                              color: AppTheme.appBarCoin,
                              letterSpacing: 0.5,
                              fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '(4)',
                          style: GoogleFonts.lato(
                              color: AppTheme.txtColor3,
                              letterSpacing: 0.5,
                              fontSize: 12.sp),
                        )
                      ],
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      child: Image(
                        image: AssetImage('assets/images/drop.png'),
                        fit: BoxFit.contain,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                color:Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 18.w),
                height: 32.h,
                child: TextFormField(

                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: AppTheme.appBackgroundColor,
                    contentPadding: EdgeInsets.only(left: 11.w, right: 0),
                    border: new OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    hintText: 'Search cards',
                    hintStyle: GoogleFonts.lato(
                        fontSize: 13.sp,
                        letterSpacing: 0.5,
                        color: AppTheme.hintColor),
                    suffixIcon: Container(
                      alignment: Alignment.centerRight,
                      width: 24.w,
                      height: 24.h,
                      margin:
                          EdgeInsets.only(top: 5.h, bottom: 5.h, right: 4.w),
                      child: GestureDetector(
                        onTap: () {},
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
                  onEditingComplete: FocusScope.of(context).requestFocus,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  itemCount: mediaModelList.length,
                  itemBuilder: (context, index) {
                    MediaModels modelList = mediaModelList[index];
                    return Column(
                      children: [
                        new Container(
                          color:Colors.white,
                          child: new IntrinsicHeight(
                            child: new Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                new Container(
                                  child: modelList.img != ""
                                      ? Image(
                                          image: AssetImage(modelList.img),
                                          fit: BoxFit.fill,
                                          width: 48.w,
                                          height: 48.w,
                                        )
                                      : Image(
                                          image: AssetImage(
                                              'assets/images/img_placeholder.png'),
                                          fit: BoxFit.fill,
                                          width: 48.w,
                                          height: 48.w,
                                        ),
                                ),
                                Container(
                                  width: 3,
                                  color: AppTheme.appBarCoin,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                new Expanded(
                                  child: new Container(
                                    child: new Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Text(
                                          modelList.title ?? '',
                                          style:
                                              GoogleFonts.lato(fontSize: 16.sp),
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        new Text(
                                          modelList.subTitle ?? '',
                                          style: GoogleFonts.lato(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w900,
                                              color: AppTheme.floatingColor,
                                              letterSpacing: 0.9),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(4.r),
                                              ),
                                              color: _selectedIndex == index
                                                  ? AppTheme.appBarCoin
                                                  : Colors.transparent,
                                              border: Border.all(
                                                  color: AppTheme.appBarCoin)),
                                          child: Text(
                                            _selectedIndex == index
                                                ? 'SELECTED'
                                                : 'SELECT',
                                            style: TextStyle(
                                              color: _selectedIndex == index
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: _selectedIndex == index
                                                  ? 12.sp
                                                  : 12.sp,
                                            ),
                                          ),
                                          width: 67.w,
                                          height: 21.h,
                                          alignment: Alignment.center,
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _selectedIndex = index;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 18.w,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 2.h,
                          color: AppTheme.deviderColor,
                        ),
                      ],
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => StartScreen('1')));
                },
                child: Container(
                  width: 130.w,
                  height: 32.h,
                  margin: EdgeInsets.only(top: 24.h, bottom: 24.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3.r)),
                      color: AppTheme.appBarCoin,
                      border: Border.all(color: AppTheme.appBarCoin)),
                  child: Text(
                    'CONTINUE',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Models/sub_genre_model.dart';
import 'package:plotagonist/Screen/plot_summary.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plotagonist/generated/l10n.dart';

class SubGenreScreen extends StatefulWidget {
  final genre;

  SubGenreScreen({this.genre = "Genre"});

  @override
  _SubGenreScreenState createState() => _SubGenreScreenState();
}

class _SubGenreScreenState extends State<SubGenreScreen> {
  int _selectedIndex = -1;
  Color color;
  bool visibilityPopUp = true;

  void _changed(bool visibility) {
    setState(() {
      visibilityPopUp = visibility;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    color = Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        height: 40.h,
        width: 0.45.sw,
        child: FloatingActionButton.extended(
          backgroundColor:
              _selectedIndex >= 0 ? AppTheme.appBarCoin : Colors.transparent,
          elevation: 0,
          onPressed: () {
            if (_selectedIndex >= 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PlotSummary()));
            }
          },
          label: Text(
            S.of(context).nextStep,
            style: GoogleFonts.lato(
                fontSize: 16.sp,
                color: _selectedIndex >= 0 ? Colors.white : Colors.grey,
                fontWeight: FontWeight.bold),
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: AppTheme.appBarCoin, width: 1.0)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style:  GoogleFonts.lato(color: AppTheme.txtappBar, fontSize: 17.sp,letterSpacing: 0.5),
              ),
            ),
          ],
        ),
        middle: Text(
          S.of(context).chooseSubgenre,
          style:  GoogleFonts.lato(color: Colors.black, fontSize: 17.sp,letterSpacing: 0.5),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => PlotSummary()));
          },
          child: Text(
            S.of(context).skip,
            style:  GoogleFonts.lato(color: AppTheme.txtappBar, fontSize: 17.sp,letterSpacing: 0.5),
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
                          child:   Container(
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 14.w, top: 8.h, bottom: 10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    S.of(context).SubgenreInstructionTitle,
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
                                    S.of(context).SubgenreInstructionSubtitle,
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
                                  fit: BoxFit.fill,
                                  image:  AssetImage("assets/images/chat_bg.png")
                              ),
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
                margin: EdgeInsets.only(top: 10.h, bottom: 60.h),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: subGenreList.length,
                  itemBuilder: (context, index) {
                    SubGenreModels subgenre = subGenreList[index];
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 6.h, horizontal: 23.w),
                      padding:
                          EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.h),
                      decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? AppTheme.selectIndex
                              : AppTheme.clippathColor,
                          borderRadius: BorderRadius.all(Radius.circular(5.h))),
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        leading: Container(
                          child: ClipOval(
                            child: Image(
                              image: AssetImage(subgenre.img),
                              height: 62,
                              width: 57,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          subgenre.subgenreName.toUpperCase(),
                          style: GoogleFonts.lato(
                              fontSize: 14.sp, color: AppTheme.txtColor),
                        ),
                        selected: index == _selectedIndex,
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                      ),
                    );
                  },
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
    final double startMargin = width / 18;

    final double s1 = height * 0.3;
    final double s2 = height * 0.2;
    final Path path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(startMargin, 0.2, width - startMargin, height),
          const Radius.circular(6)))
      ..lineTo(startMargin, s1)
      ..lineTo(6.0, size.height / 4)
      ..lineTo(startMargin, s2)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

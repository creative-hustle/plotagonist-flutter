import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/slider.dart';
import 'package:plotagonist/Screen/start_screen.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plotagonist/generated/l10n.dart';

class TipPageView extends StatefulWidget {
  @override
  _TipPageViewState createState() => _TipPageViewState();
}

class _TipPageViewState extends State<TipPageView> {
  int _currentPage = 0;
  PageController _controller = PageController();
  
  

 

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _pages = [
      SliderPage(
          title: S.of(context).sliderPage1Title,
          description:
          S.of(context).sliderPage1Subtitle),
      SliderPage(
        title: S.of(context).sliderPage2Title,
        description:
        S.of(context).sliderPage2Subtitle,
      ),
      SliderPage(
        title: S.of(context).sliderPage3Title,
        description:
        S.of(context).sliderPage3Subtitle,
      ),
      SliderPage(
        title: S.of(context).sliderPage4Title,
        description:
        S.of(context).sliderPage4Subtitle,
      ),
    ];
    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: 10,
                        margin:
                            EdgeInsets.only(left: 5.h, right: 5.h, top: 45.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.h),
                            color: (index == _currentPage)
                                ? Colors.orange
                                : Colors.grey.withOpacity(0.5)));
                  })),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (_currentPage == (_pages.length - 1)) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => StartScreen()));
                      } else {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 800),
                            curve: Curves.easeInOutQuint);
                      }
                    },
                    child: AnimatedContainer(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: 30.h, right: 30.h, top: 7.h, bottom: 7.h),
                        duration: Duration(milliseconds: 300),
                        color: AppTheme.floatingColor,
                        child: (_currentPage == (_pages.length - 1))
                            ? Text(
                                S.of(context).startWriting,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                ),
                              )
                            : Text(
                                S.of(context).nextTip,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                ),
                              )),
                  ),
                ],
              ),
              SizedBox(
                height: 38.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}

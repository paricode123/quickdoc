import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'number.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    ContainerPage(
      backgroundColor: Color(0xFF59d4ff),
      text: 'QuikDoc',
      image: Image.asset('assets/images/doc1.png'),
      text1: 'Consult Top Doctors in an Easy way',
    ),
    ContainerPage(
      backgroundColor: Color(0xFF59d4ff),
      text: 'QuikDoc',
      image: Image.asset('assets/images/doc2.png'),
      text1: 'Consult Top Doctors in an Easy way',
    ),
    ContainerPage(
      backgroundColor: Color(0xFF59d4ff),
      text: 'QuikDoc',
      image: Image.asset('assets/images/doc3.png'),
      text1: 'Consult Top Doctors in an Easy way',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    children: _pages,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPageIndex = index;
                      });
                    },
                  ),
                  Positioned(
                    bottom: 30.0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // height: 300.h,
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h,),
                Text(
                  'Let\'s get started! Enter your mobile number:',
                  style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.black),
                ),
                SizedBox(height: 20.h,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerificationPage()),
                    );
                  },
                  child: Container(
                    height: 80.sp,
                    width: double.infinity,
                    child: Image(
                        image:  AssetImage(
                          'assets/images/text.jpg',
                        ),fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 10.h,),
                Text(
                  'Trouble signing in?',
                  style: TextStyle(fontSize: 16.sp,decoration: TextDecoration.underline,color: Colors.black),
                ),
                SizedBox(height: 30.h,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _pages.length; i++) {
      indicators.add(
        Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPageIndex == i ? Colors.blue : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}

class ContainerPage extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final String text1;
  final Image image;

  const ContainerPage({
    required this.backgroundColor,
    required this.text,
    required this.image,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Row(
              children: [
                Icon(Icons.circle,color: Colors.blue.shade700,size: 15,),
                SizedBox(width: 5.w,),
                Text(
                  text,
                  style: TextStyle(fontSize: 30.sp, color: Colors.white,fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5.w,),
                Icon(Icons.circle,color: Colors.blue.shade700,size: 15,),
              ],
            ),
            Spacer(),
            Container(
              width: 200.0,
              height: 200.0,
              child: image,
            ),
            Spacer(),
            Text(
              text1,
              style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
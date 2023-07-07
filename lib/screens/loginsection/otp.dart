import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'name.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  TextEditingController _passwordController = TextEditingController();

  final List<TextEditingController> _controllers =
  List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _handleTextChanged(int index, String value) {
    if (value.isNotEmpty && index < _controllers.length - 1) {
      FocusScope.of(context).nextFocus();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Row(
          children: [
            Spacer(),
            CircleAvatar(
                radius: 10.sp,
                backgroundColor: Colors.black,
                child: Icon(Icons.question_mark,color: Colors.white,size: 15,)),
            SizedBox(width: 10.w,),
            Text('Help',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
              'Enter your Password',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25.h),
            TextField(
              controller: _passwordController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: ' password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: List.generate(
            //     4,
            //         (index) => Container(
            //       width: 45.0.w,
            //       height: 60.0.h,
            //       margin: EdgeInsets.symmetric(horizontal: 8.0.w),
            //       decoration: BoxDecoration(
            //         border: Border.all(width: 1.0),
            //         borderRadius: BorderRadius.circular(8.0.r),
            //       ),
            //       child: TextField(
            //         controller: _controllers[index],
            //         textAlign: TextAlign.center,
            //         keyboardType: TextInputType.number,
            //         maxLength: 1,
            //         onChanged: (value) => _handleTextChanged(index, value),
            //         decoration: InputDecoration(
            //           border: InputBorder.none,
            //           counterText: '',
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 30.h),
            // Row(
            //   children: [
            //     Text(
            //       'Didnot receive the code?',
            //       style: TextStyle(
            //         fontSize: 15.sp,
            //         color: Colors.grey.shade500,
            //       ),
            //     ),
            //     SizedBox(width: 5.h),
            //     Text(
            //       'Resend',
            //       style: TextStyle(
            //         fontSize: 15.sp,
            //         color: Colors.blue.shade500,
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 5.h),
            // Text(
            //   'Get OTP on call',
            //   style: TextStyle(
            //     fontSize: 16.sp,
            //     decoration: TextDecoration.underline,
            //     color: Colors.black,
            //   ),
            // ),
            Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPage()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Color(0xFF2fade2),
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}

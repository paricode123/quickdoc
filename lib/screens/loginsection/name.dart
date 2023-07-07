import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickdoc/screens/home.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool _isChecked = false;
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Hide the app bar
      body: Container(
        color:  Color(0xFF2fade2),
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Text(
                'Hi,',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade300,
                  fontSize: 30.sp
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "What's your name?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30.sp,
                ),
              ),
              SizedBox(height: 30.h),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'Select your gender:-',
                style: TextStyle(fontSize: 18.sp,color: Colors.white,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 'Male',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value as String;
                      });
                    },
                  ),
                  Text('Male',
                    style: TextStyle(fontSize: 15.sp,color: Colors.white),
                  ),
                  SizedBox(height: 20.h,),
                  Radio(
                    value: 'Female',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value as String;
                      });
                    },
                  ),
                  Text('Female',
                    style: TextStyle(fontSize: 15.sp,color: Colors.white),
                  ),
                  SizedBox(height: 20.h,),
                  Radio(
                    value: 'Other',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value as String;
                      });
                    },
                  ),
                  Text('Other',
                    style: TextStyle(fontSize: 15.sp,color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Spacer(),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Receive relevant offers and promotional\ncommunication from QuikDoc',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 17.sp,
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.bold
                      ),
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

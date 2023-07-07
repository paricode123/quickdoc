import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'confirm.dart';

class MyAppointmentPage extends StatefulWidget {
  @override
  _MyAppointmentPageState createState() => _MyAppointmentPageState();
}

class _MyAppointmentPageState extends State<MyAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue.shade400,
              radius: 15.r,
            ),
            SizedBox(width: 8.w),
            Text(
              'Clinic Visit Slots',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: Colors.black
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildContainer(
                'assets/images/dp.png',
                'Dr. Rani Das',
                'Eye Specialist',
                'Highly Recommended for Doctor Friendliness',
                '95%',
                '323 Patient Stories',
                    () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HealthPage()),
                  // );
                },
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Icon(Icons.access_time),
                  SizedBox(width: 10.w),
                  Text('Appointment Time'),
                ],
              ),
              SizedBox(height: 5.h),
              Text('Saturday 17 June 06:30 p.m.',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                height: 3.h,
                color: Colors.grey.shade300,
                margin: EdgeInsets.symmetric(vertical: 10.h),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.home_outlined),
                  SizedBox(width: 10.w),
                  Text('Clinic Details'),
                ],
              ),
              SizedBox(height: 10.h),
              Text('Chinmayi Child Care Clinic\nPIN - 355326, Dist.-Unkown',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp)),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                height: 3.h,
                color: Colors.grey.shade300,
                margin: EdgeInsets.symmetric(vertical: 10.h),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.verified,color: Colors.green,),
                  SizedBox(width: 10.w),
                  Text('QuikDoc Promise',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 18.sp)),
                ],
              ),
              SizedBox(height: 5.h),
              Text('Appointment confirmed instantly'),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                height: 3.h,
                color: Colors.grey.shade300,
                margin: EdgeInsets.symmetric(vertical: 10.h),
              ),
              SizedBox(height: 10.h),
              Text('Bill Details',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19.sp)),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text('Consultation Fee',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.sp,color: Colors.grey)),
                  Spacer(),
                  Text('Rs.800',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp,color: Colors.grey)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text('Platfrom Fee',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.sp,color: Colors.grey)),
                  Spacer(),
                  Text('Rs.49',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp,color: Colors.grey)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Service Fee & Tax',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.sp,color: Colors.grey)),
                      SizedBox(height: 10.h,),
                      Text(
                        'We care for you & provide a free booking',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.green
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(' Rs.79 ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp,color: Colors.grey,decoration: TextDecoration.lineThrough)),
                  SizedBox(width: 5.w,),
                  Text('FREE',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp,color: Colors.green)),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                height: 3.h,
                color: Colors.grey.shade300,
                margin: EdgeInsets.symmetric(vertical: 10.h),
              ),
              Row(
                children: [
                  Text('Total Payable',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19.sp)),
                  Spacer(),
                  Text('Rs.849',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19.sp)),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    color: Colors.green.shade300,
                    width: 2.w,
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 8.h,horizontal: 3.w),
                  child: Row(
                    children: [
                      Text(
                        'You have saved Rs.49 on this appointment',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.green
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.savings_outlined,color: Colors.blue,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding:  EdgeInsets.all(8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('View Bill',style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.bold),),
              Container(
                width: 270.w, // Set desired width
                height: 60.h, // Set desired height
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CornfirmPage()),
                    );
                  },
                  child: Text('Confirm Clinic Visit',style: TextStyle(fontSize: 16.sp),),
                ),
              ),
            ],
          ),
        ),
      ),    );
  }
  Widget _buildContainer(
      String imagePath,
      String name,
      String stream,
      String special,
      String percent,
      String story,
      VoidCallback onTap)
  {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical:15.h,),
          child: Material(
            elevation: 3,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                // height: 200.h,
                child: Padding(
                  padding:  EdgeInsets.all(8.w),
                  child: Column(
                    children: [
                      Row(children: <Widget>[
                        Column(
                          children: [
                            Container(
                                width: 90.w,
                                height: 90.h,
                                child: Image.asset(
                                  imagePath,
                                  fit: BoxFit.cover,
                                )),
                            Row(
                              children: [
                                Icon(Icons.home_outlined,color: Colors.blue,),
                                SizedBox(width: 5.w,),
                                Text(
                                  'In-clinic',
                                  style: TextStyle(fontSize: 15.sp,color: Colors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    name,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),
                                  ),
                                  SizedBox(width: 15.w,),
                                  Icon(Icons.verified,color: Colors.blue,)
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text(stream),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Icon(Icons.thumb_up,color: Colors.green,size: 20.sp,),
                                  SizedBox(width: 3.w),
                                  Text(percent,                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),
                                  ),
                                  SizedBox(width: 7.w),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Icon(Icons.comment,color: Colors.green,size: 20.sp,),
                                  SizedBox(width: 3.w),
                                  Text(story,                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Icon(Icons.comment_bank_outlined,color: Colors.grey,),
                                  SizedBox(width: 2.w),
                                  Text(special,style: TextStyle(fontSize: 10.sp),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
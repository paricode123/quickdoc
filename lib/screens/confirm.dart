import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CornfirmPage extends StatefulWidget {
  const CornfirmPage({Key? key}) : super(key: key);

  @override
  State<CornfirmPage> createState() => _CornfirmPageState();
}

class _CornfirmPageState extends State<CornfirmPage> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Upcoming Appointment',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                        child: Icon(Icons.event),
                      ),
                      Text('Confirmation Pending',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Waiting for the hospital to confirm your appointment. In case your preferred slot is not available, you will receive a callback within an hour.',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            _buildContainer(
              'assets/images/dp.png',
              'Dr. Rani Das',
              'Eye Specialist',
              'Special Interest in Diabetology',
              '17 years experience',
              '95%',
              '323 Patient Stories',
              'Domlur',
              'Kaveri Healthcare',
                  () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HealthPage()),
                // );
              },
            ),
            SizedBox(height: 20.h,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.label_important_outline),
                      ),
                      Text('Important Note',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Detect Breast cancer early by getting scanned at hospital',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Package includes consultation + USG/ Mammogram + registration - INR 999/-',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Contact - Phone No.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Hospital Address',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Need Help?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'In case of any issue, talk to our customer support.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(Icons.chat),
                ),
                Text('Chat Support'),
                Spacer(),
                Icon(Icons.arrow_forward_ios),
                SizedBox(width: 16.w,)
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Booking Details',
                style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // height: 200.h,
              child: Padding(
                padding:  EdgeInsets.all(8.w),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Padding(
                        padding: EdgeInsets.all(8.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Patient',
                            ),
                            SizedBox(height: 10.h),
                            Text('Name',                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),
                            ),
                            SizedBox(height: 5.h),
                            Text('Phone No.',style: TextStyle(fontSize: 15.sp),
                            )
                          ],
                        ),
                      ),
                      Container(
                          width: 90.w,
                          height: 90.h,
                          child: Image.asset(
                            'assets/images/dp.png',
                            fit: BoxFit.cover,
                          )),
                    ]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 3.h,
                    color: Colors.grey.shade300,
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                  ),
                  SizedBox(height: 20.h),
                  Text('Appointment ID'),
                  SizedBox(height: 5.h),
                  Text('52675346',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.h),
                  Container(
                    width: double.infinity,
                    height: 3.h,
                    color: Colors.grey.shade300,
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                  ),
                  SizedBox(height: 20.h),
                  Text('Appointment Fees'),
                  SizedBox(height: 5.h),
                  Text('Rs.800',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.h),
                  Container(
                    width: double.infinity,
                    height: 3.h,
                    color: Colors.grey.shade300,
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildContainer(
      String imagePath,
      String name,
      String stream,
      String special,
      String experiance,
      String percent,
      String story,
      String hospital,
      String address,
      VoidCallback onTap)
  {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical:15.h,horizontal: 8.w),
          child: Material(
            elevation: 3,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                // height: 350.h,
                child: Padding(
                  padding:  EdgeInsets.all(8.w),
                  child: Column(
                    children: [
                      Row(children: <Widget>[
                        Container(
                            width: 125.w,
                            height: 150.h,
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                            )),
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
                              Text(special)          ,
                              SizedBox(height: 5.h),
                              Text(experiance),
                              SizedBox(height: 10.h),
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
                              ),                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 10.h,),
                      Container(
                        width: double.infinity,
                        height: 3,
                        color: Colors.grey.shade300,
                        margin: EdgeInsets.symmetric(vertical: 10),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            hospital,
                            style: TextStyle(fontWeight: FontWeight.w600,),
                          ),
                          SizedBox(width: 5.w,),
                          Text(address),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 10.w,),
                              Expanded(
                                child: Container(),
                              ),
                              SizedBox(width: 10.w,),
                              Expanded(
                                child: GestureDetector(
                                  // onTap: (){
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context) => OtpVerify()),
                                  //   );
                                  // },
                                  child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(color: Color(0xFF2fade2), width: 2.0),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Continue Payment',
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 16.sp,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
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

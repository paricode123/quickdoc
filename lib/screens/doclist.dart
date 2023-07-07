import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book.dart';

class HealthPage extends StatefulWidget {
  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        title: Row(
          children: [
            Text(
              'Find your health concern',
              style: TextStyle(fontSize: 15.sp),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(fontSize: 15.sp),
                ),
                Text(
                  'Bengaluru',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h,),
            Container(
              margin: EdgeInsets.all(10.0.w),
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15.0.r),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for clinics and hospitals",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.all(8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Research Offering Prime Benefits',
                    style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.details)
                ],
              ),
            ),
            Divider(
              height: 6.h,
              color: Colors.grey,
            ),
            _buildContainer(
              'assets/images/dp.png',
              'Dr. Raja Das',
              'Eye Specialist',
              'Special Interest in Diabetology',
              '17 years experience',
              '95%',
              '323 Patient Stories',
              'Domlur',
              'Kaveri Healthcare',
              '750/- Consultation Fees',
              '09:00 AM, tomorrow',
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                );
              },
            ),
            _buildContainer(
              'assets/images/dp.png',
              'Dr. Punam Das',
              'Eye Specialist',
              'Special Interest in Diabetology',
              '17 years experience',
              '95%',
              '323 Patient Stories',
              'Domlur',
              'Kaveri Healthcare',
              '750/- Consultation Fees',
              '09:00 AM, tomorrow',
                  () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HealthPage()),
                // );
              },
            ),
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
              '750/- Consultation Fees',
              '09:00 AM, tomorrow',
                  () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HealthPage()),
                // );
              },
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
      String fees,
      String time,
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
                        SizedBox(width: 10.w,),
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
                              Text(stream,
                                style: TextStyle(fontSize: 15.sp),
                              ),
                              SizedBox(height: 5.h),
                              Text(special,
                                style: TextStyle(fontSize: 13.sp),
                              )          ,
                              SizedBox(height: 5.h),
                              Text(experiance,
                                style: TextStyle(fontSize: 15.sp),
                              ),
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
                              )
                            ],
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
                      SizedBox(height: 10.h,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text(
                                address,
                                style: TextStyle(fontWeight: FontWeight.w600,),
                              ),
                              SizedBox(width: 5.w,),
                              Icon(Icons.circle,color: Colors.black,size: 11.sp,),
                              SizedBox(width: 5.w,),
                              Text(hospital),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(fees),
                          SizedBox(height: 5.h),
                          Text('NEXT AVAILABLE AT -',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp,color: Colors.green),
                          )  ,
                          Row(
                            children: [
                              Icon(Icons.home_outlined,color: Colors.black,),
                              SizedBox(width: 5.w),
                              Text(time),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          GestureDetector(
                            // onTap: (){
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => OtpVerify()),
                            //   );
                            // },
                            child: Container(
                              width: double.infinity,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xFF2fade2),
                              ),
                              child: Center(
                                child: Text(
                                  'Book Clinic Visit',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 18.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
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

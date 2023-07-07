import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:http/http.dart' as http;

import '../drawer.dart';
import 'doclist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> healthTips = [
    "“Time and health are two precious assets that we don’t recognize and appreciate until they have been depleted.”",
    "“A fit body, a calm mind, a house full of love. These things cannot be bought – they must be earned.”",
    "“A good laugh and a long sleep are the best cures in the doctor’s book.”",
    " “Let food be thy medicine and medicine be thy food.”",
    "“Physical fitness is the first requisite of happiness.”",
    "“Good health is not something we can buy. However, it can be an extremely valuable savings account.” ",
    "“A sad soul can be just as lethal as a germ.”",
    "“Your body hears everything your mind says.”",
  ];

  bool showThirdRow = false;
  bool showAllDoctors = false;

  Future<void> fetchData() async {
    final url = Uri.parse('https://thetechnicalsolution.in/quikdoc/Api/health_tips.php');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        // Process the JSON response here
        // You can access the data using jsonResponse["message"]
        // For example, if the response is an array of tips:
        final tips = jsonResponse["message"] as List<dynamic>;
        for (var tip in tips) {
          print(tip["tips"]);
        }
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      print('Error: $error');
    }
  }


  @override
  Widget build(BuildContext context) {
    var customLayoutOption = CustomLayoutOption(
      startIndex: -1,
      stateCount: 3,
    )
      ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
      ..addTranslate([
        Offset(-370.0, -40.0),
        Offset(0.0, 0.0),
        Offset(370.0, -40.0),
      ]);

    var swiper = Swiper(
      layout: SwiperLayout.CUSTOM,
      customLayoutOption: customLayoutOption,
      itemWidth: 300.0,
      itemHeight: 200.0,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF414BB2), // Dark blue color
                Color(0xFF29328E), // Light blue color
              ],
            ),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text(
              healthTips[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
      itemCount: healthTips.length,
      pagination: SwiperPagination(
        builder: DotSwiperPaginationBuilder(
          activeColor: Colors.blue,
          color: Colors.grey,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.blue.shade400),
        elevation: 1,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Bangalore",
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              Icons.arrow_downward,
              color: Colors.black,
              size: 18,
            ),
            Spacer(),
            Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0.h),
          child: Container(
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
        ),
      ),
      drawer: NavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                      color: Colors.blue.shade500
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Book an Appointment here -',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            _buildRowContainer(
              'assets/images/eye.png',
              'Eye Specialist',
              'assets/images/heart.png',
              'Heart Specialist',
              'assets/images/dentist.png',
              'Dentist\n ',
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HealthPage()),
               );
              },
                  () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HeartSpecialistPage()),
                // );
              },
                  () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => DentistPage()),
                // );
              },
            ),
            _buildRowContainer(
              'assets/images/general.png',
              'General Physician',
              'assets/images/ortho.png',
              'Orthopedist\n ',
              'assets/images/skin.png',
              'Dermatologist',
                  () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => EyeSpecialistPage()),
                // );
              },
                  () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HeartSpecialistPage()),
                // );
              },
                  () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => DentistPage()),
                // );
              },
            ),

            Visibility(
              visible: showThirdRow,
              child: _buildRowContainer(
                'assets/images/child.png',
                'Pediatrician\n',
                'assets/images/gyno.png',
                'Gynecologist',
                'assets/images/endo.png',
                'Endocrinologist',
                    () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => EyeSpecialistPage()),
                  // );
                },
                    () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HeartSpecialistPage()),
                  // );
                },
                    () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DentistPage()),
                  // );
                },
              ),
            ),
            SizedBox(height: 10.h,),

            GestureDetector(
              onTap: () {
                setState(() {
                  showThirdRow = !showThirdRow;
                });
              },
              child: Container(
                width: double.infinity,
                height: 35.h,
                margin: EdgeInsets.all(10.sp),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Show All',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            Padding(
              padding:  EdgeInsets.all(8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20.sp,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.medical_information_outlined,
                      color: Colors.blue,
                      size: 30.sp,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Top Doctors',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200, // Set the desired height of the container
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // Add your horizontally scrollable content here
                  _buildList1Container(
                    'assets/images/dp.png',
                    'Dr. Rani Das',
                    'Eye Specialist',
                    '17 years experience',
                    '95%',
                    '323 Patient Stories',
                        () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HealthPage()),
                      // );
                    },
                  ),
                  SizedBox(width:10.w,),
                  _buildList1Container(
                    'assets/images/dp.png',
                    'Dr. Rani Das',
                    'Eye Specialist',
                    '17 years experience',
                    '95%',
                    '323 Patient Stories',
                        () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HealthPage()),
                      // );
                    },
                  ),
                  SizedBox(width:10.w,),
                  _buildList1Container(
                    'assets/images/dp.png',
                    'Dr. Rani Das',
                    'Eye Specialist',
                    '17 years experience',
                    '95%',
                    '323 Patient Stories',
                        () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HealthPage()),
                      // );
                    },
                  ),
                  SizedBox(width: 10.w,),
                  _buildList1Container(
                    'assets/images/dp.png',
                    'Dr. Rani Das',
                    'Eye Specialist',
                    '17 years experience',
                    '95%',
                    '323 Patient Stories',
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
            Container(
              height: 200, // Set the desired height of the container
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // Add your horizontally scrollable content here
                  _buildList1Container(
                    'assets/images/dp.png',
                    'Dr. Rani Das',
                    'Eye Specialist',
                    '17 years experience',
                    '95%',
                    '323 Patient Stories',
                        () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HealthPage()),
                      // );
                    },
                  ),
                  SizedBox(width:10.w,),
                  _buildList1Container(
                    'assets/images/dp.png',
                    'Dr. Rani Das',
                    'Eye Specialist',
                    '17 years experience',
                    '95%',
                    '323 Patient Stories',
                        () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HealthPage()),
                      // );
                    },
                  ),
                  SizedBox(width:10.w,),
                  _buildList1Container(
                    'assets/images/dp.png',
                    'Dr. Rani Das',
                    'Eye Specialist',
                    '17 years experience',
                    '95%',
                    '323 Patient Stories',
                        () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HealthPage()),
                      // );
                    },
                  ),
                  SizedBox(width: 10.w,),
                  _buildList1Container(
                    'assets/images/dp.png',
                    'Dr. Rani Das',
                    'Eye Specialist',
                    '17 years experience',
                    '95%',
                    '323 Patient Stories',
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

            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20.sp,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.tips_and_updates_outlined,
                    color: Colors.blue,
                    size: 30.sp,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  'Health Tips',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 270.0.h,
              child: swiper,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildRowContainer(
      String image1,
      String text1,
      String image2,
      String text2,
      String image3,
      String text3,
      VoidCallback onTap1,
      VoidCallback onTap2,
      VoidCallback onTap3,
      ) {
    return Row(
      children: [
        _buildContainer(image1, text1, onTap1),
        _buildContainer(image2, text2,onTap2),
        _buildContainer(image3, text3,onTap3),
      ],
    );
  }

  Widget _buildContainer(String imagePath, String text, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0,
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: Image.asset(
                  imagePath,
                  height: 90,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildList1Container(
      String imagePath,
      String name,
      String stream,
      String experiance,
      String percent,
      String story,
      VoidCallback onTap)
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:15.h,horizontal: 8.w),
      child: Material(
        elevation: 3,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 200.h,
            child: Padding(
              padding:  EdgeInsets.all(8.w),
              child: Column(
                children: [
                  Row(children: <Widget>[
                    Container(
                        width: 80.w,
                        height: 80.h,
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text(
                                name,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),
                              ),
                              SizedBox(width: 15.w,),
                              Icon(Icons.verified,color: Colors.blue,)
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(stream),
                          SizedBox(height: 5.h),
                          Text(experiance),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Icon(Icons.thumb_up,color: Colors.green,size: 15.sp,),
                              SizedBox(width: 3.w),
                              Text(percent,                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.sp),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              Icon(Icons.comment,color: Colors.green,size: 15.sp,),
                              SizedBox(width: 3.w),
                              Text(story,                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.sp),
                              ),
                            ],
                          ),                            ],
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  }
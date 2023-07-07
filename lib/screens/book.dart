import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickdoc/screens/payment.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int selectedContainerIndex = 0;
  int selectedRowIndex = -1;
  int selectedColIndex = -1;

  List<String> slots = [
    'Today 15 Jun',
    'Tomorrow 16 Jun',
    '18th Jun',
  ];
  List<String> time = [
    '33 slots available',
    '33 slots available',
    '33 slots available',
  ];

  List<List<String>> morng = [
    ['09:00', '09:15', '09:45', '10:00'],
    ['10:00', '10:45', '11:15', '11:30'],
    ['11:45'],
  ];
  List<List<String>> aft = [
    ['12:00', '12:15', '12:30', '12:45'],
    ['01:00', '01:15', '01:30', '01:45'],
  ];
  List<List<String>> eve = [
    ['04:00', '04:15', '04:45', '05:00'],
    ['05:15', '05:45', '06:15', '06:30'],
  ];

  Widget buildContainer(int index) {
    bool isSelected = (index == selectedContainerIndex);
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedContainerIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade50 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey,
            width: 2.w,
          ),
        ),
        child: Column(
          children: [
            Text(
              slots[index],
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              time[index],
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToAnotherPage() {
    // Perform navigation to another page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyAppointmentPage()),
    );
  }

  Widget buildTimeSlotContainer(List<List<String>> timeSlots, String label) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.w),
          child: Row(
            children: [
              Icon(Icons.wb_sunny, color: Colors.yellow.shade700),
              SizedBox(width: 8.w),
              Text(
                label,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Column(
          children: List.generate(timeSlots.length, (rowIndex) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(timeSlots[rowIndex].length, (colIndex) {
                bool isSelected =
                (selectedRowIndex == rowIndex && selectedColIndex == colIndex);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRowIndex = rowIndex;
                      selectedColIndex = colIndex;
                    });
                    navigateToAnotherPage();
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.w),
                    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      color: (selectedRowIndex == rowIndex && selectedColIndex == colIndex)
                          ? Colors.blue.shade50
                          : Colors.grey.shade200,
                      border: Border.all(
                        color: isSelected ? Colors.blue : Colors.grey,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      children: [
                        Text(
                          timeSlots[rowIndex][colIndex],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          (label == 'Morning') ? 'AM' : 'PM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            );
          }),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. John Doe',
                  style: TextStyle(fontSize: 15.0.sp),
                ),
                Text(
                  'Kaveri Healthcare, domlur',
                  style: TextStyle(fontSize: 15.0.sp),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Row(
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0.h),
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: slots.length,
                itemBuilder: (context, index) {
                  return buildContainer(index);
                },
              ),
            ),
            SizedBox(height: 30.0.h),
            buildTimeSlotContainer(morng, 'Morning'),
            buildTimeSlotContainer(aft, 'Afternoon'),
            buildTimeSlotContainer(eve, 'Evening'),
          ],
        ),
      ),
    );
  }
}


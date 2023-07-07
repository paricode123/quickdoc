import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Your Name", style: TextStyle(fontSize: 20.w,color: Colors.black)),
            accountEmail: Text("your.email@example.com", style: TextStyle(fontSize: 16.w,color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/dp.jpg"),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15.h,),
          ListTile(
            leading: Icon(Icons.home_outlined, size: 25.w,color: Colors.blue,),
            title: Text('Home', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt_outlined, size: 25.w,color: Colors.blue,),
            title: Text('My Appointment', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.history, size: 25.w,color: Colors.blue,),
            title: Text('History', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.payments_outlined, size: 25.w,color: Colors.blue,),
            title: Text('Payment', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.rule, size: 25.w,color: Colors.blue,),
            title: Text('Tearms & Condition', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.report, size: 25.w,color: Colors.blue,),
            title: Text('My Report', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.person, size: 25.w,color: Colors.blue,),
            title: Text('My Profile', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.phone, size: 25.w,color: Colors.blue,),
            title: Text('Customer Support', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_outlined, size: 25.w,color: Colors.blue,),
            title: Text('About US', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded, size: 25.w,color: Colors.blue,),
            title: Text('Logout', style: TextStyle(fontSize: 15.sp,),),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.w,color: Colors.grey,),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BillingPage()),
              // )
            },
          ),
        ],
      ),
    );
  }
}
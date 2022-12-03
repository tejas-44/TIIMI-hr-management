import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/jobs/InactivePage.dart';

import 'jobs/ActivePage.dart';
import '../constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar:  AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,

          title: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const  [
                  Text('Jobs', style: TextStyle(color: kBlackColor, fontSize: 30,fontWeight: FontWeight.w600),),
                  Icon(Icons.search, color: Color(0xff8c97a1),size: 30,),
                ],
              ),
              Row(
                children: const  [
                  Text('Total', style: kLightGreyStyle,),
                  SizedBox(width: 5,),
                  Text('24', style: kBoldBlackStyle,),
                  SizedBox(width: 5,),
                  Text('|',  style: kVertLineStyle),
                  SizedBox(width: 5,),
                  Text('Active', style: kLightGreyStyle,),
                  SizedBox(width: 5,),
                  Text('14', style: kBoldBlackStyle,),
                  SizedBox(width: 5,),
                  Text('|',  style: kVertLineStyle),
                  SizedBox(width: 5,),
                  Text('Inactive', style: kLightGreyStyle,),
                  SizedBox(width: 5,),
                  Text('10', style: kBoldBlackStyle,),

                ],
              ),

            ],
          ),
          bottom: const TabBar(


            labelStyle: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
            labelColor: kBlackColor,
            unselectedLabelColor: Colors.grey ,
            indicator: UnderlineTabIndicator(

                borderSide: BorderSide(width: 2.0, color: Colors.yellow),

                insets: EdgeInsets.symmetric(horizontal:16.0)
            ),

            tabs:  [
              Tab(text: 'ACTIVE',),
              Tab(text: 'INACTIVE',),
            ],
          ),

        ),
        body: const TabBarView(
          children: [
            ActivePage(),
            InactivePage(),

          ],
        ),
      ),
    );
  }
}
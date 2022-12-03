import 'package:flutter/material.dart';
import 'package:flutter_projects/constants.dart';

class CustomFloatingActionButton extends StatefulWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<CustomFloatingActionButton> createState() => _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState extends State<CustomFloatingActionButton> {
  static const IconData globe = IconData(0xf68d,);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (2.5/5),
      height: 40,

      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.white,
        boxShadow: const [
         BoxShadow(
        color: kGreyColor, //New
        blurRadius: 2.0,
      )]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Row(
            children: const [

              Icon(Icons.filter_alt_outlined, color: kGreyColor,),
              SizedBox(width: 5,),
              Text('Sort', style: kBoldGreyStyle,),
            ],  
          ),
          SizedBox(width: 10,),
          VerticalDivider(color: Colors.black,thickness: 0.3,),
          SizedBox(width: 10,),
          Row(
            children: [
              Icon(Icons.album, color: kGreyColor,),
              SizedBox(width: 5,),
              Text('Status', style: kBoldGreyStyle,),
            ],
          )
        ],
      ),
    );
  }
}

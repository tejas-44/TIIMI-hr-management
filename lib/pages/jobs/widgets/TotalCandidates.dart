import 'package:flutter/material.dart';
import 'package:flutter_projects/constants.dart';

class TotalCandidates extends StatelessWidget {
  final String total;
  final String newCandidates;

  const TotalCandidates({
    Key? key,
    required this.total,
    required this.newCandidates,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.black12),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
          child: Row(
            children: [
              const Text('Total', style: kLightGreyStyle,),
              const SizedBox(
                width: 5,
              ),
              Text('$total Candidates',style: kBoldGreyStyle,),
              const SizedBox(
                width: 5,
              ),
              const Text('|', style: kVertLineStyle),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'New ',
                style: kGreenTextStyle
              ),
              Text(newCandidates, style: kGreenTextStyle,),
            ],
          ),
        ),
      ],
    );
  }
}

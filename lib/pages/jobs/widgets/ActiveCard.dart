import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/jobs/widgets/TotalCandidates.dart';
import '../../../constants.dart';

class ActiveCard extends StatelessWidget {
  final String jobTitle;
  final String location;
  final String jobType;
  final bool isDraft;
  final String total;
  final String newCandidates;

  const ActiveCard(
      {Key? key,
      required this.jobTitle,
      required this.total,
      required this.newCandidates,
      required this.location,
      required this.jobType,
      required this.isDraft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,16,16,0),
      child: Container(
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isDraft ? kGreyColor : Colors.green,
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(6, 0, 0, 0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          jobTitle,
                          style: kBoldBlackStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              location,
                              style: kLightGreyStyle,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '●',
                              style: kLightGreyStyle,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              jobType,
                              style: kLightGreyStyle,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 16, 0),
                    child: Container(
                      height: 23,
                      width: 90,
                      decoration: BoxDecoration(
                          color: isDraft ? kGreyColor : Colors.green,
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            isDraft ? Icons.restore_page : Icons.pie_chart,
                            color: Colors.white,
                            size: 15,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            isDraft ? 'Draft' : 'Published',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              isDraft ? const SizedBox(height: 10) : TotalCandidates(total: total,newCandidates: newCandidates,),
            ],
          ),
        ),
      ),
    );
  }
}

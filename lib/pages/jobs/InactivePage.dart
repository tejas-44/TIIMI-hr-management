import 'package:flutter/material.dart';
import './widgets/ActiveCard.dart';
class InactivePage extends StatelessWidget {
  const InactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const  [

          ActiveCard(
            jobTitle: 'Illustrator',
            jobType: 'Freelancer',
            location: 'Purvokerto',
            isDraft: true,
            total: '54',
            newCandidates: '+2',
          ),
          ActiveCard(
            jobTitle: 'Illustrator',
            jobType: 'Freelancer',
            location: 'Purvokerto',
            isDraft: false,
            total: '54',
            newCandidates: '+2',
          ),
          ActiveCard(
            jobTitle: 'Illustrator',
            jobType: 'Freelancer',
            location: 'Purvokerto',
            isDraft: false,
            total: '54',
            newCandidates: '+2',
          ),
          ActiveCard(
            jobTitle: 'Illustrator',
            jobType: 'Freelancer',
            location: 'Purvokerto',
            isDraft: false,
            total: '54',
            newCandidates: '+2',
          ),
          ActiveCard(
            jobTitle: 'Illustrator',
            jobType: 'Freelancer',
            location: 'Purvokerto',
            isDraft: false,
            total: '54',
            newCandidates: '+2',
          ),
          ActiveCard(
            jobTitle: 'Illustrator',
            jobType: 'Freelancer',
            location: 'Purvokerto',
            isDraft: false,
            total: '54',
            newCandidates: '+2',
          ),
          ActiveCard(
            jobTitle: 'Illustrator',
            jobType: 'Freelancer',
            location: 'Purvokerto',
            isDraft: false,
            total: '54',
            newCandidates: '+2',
          ),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}

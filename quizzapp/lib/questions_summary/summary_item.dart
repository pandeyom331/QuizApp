import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.robotoMono(
                    color: const Color.fromARGB(255, 251, 255, 7),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style: GoogleFonts.robotoMono(
                    color: const Color.fromARGB(255, 90, 255, 7),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.robotoMono(
                    color: const Color.fromARGB(255, 255, 7, 119),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        )
      ],
    );
  }
}

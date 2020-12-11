
import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 7,),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.redAccent
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
  debugShowCheckedModeBanner: false,
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'joe', text: 'is simply dummy text of the printing and typesetting industry.'),
    Quote(author: 'jane', text: 'orem Ipsum has been the industry standard dummy text ever since the 1500s'),
    Quote(author: 'jack', text: 'when an unknown printer took a galley of type and scrambled it to make a type specimen book')
  ];

  Widget quoteTemplet(quote) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes'
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplet(quote)).toList(),
      ),
    );
  }
}

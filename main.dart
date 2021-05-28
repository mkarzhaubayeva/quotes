import 'package:flutter/material.dart';
import './quote.dart';
import './quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote('Be yourself. Everyone else is already taken', 'Oscar Wild'),
    Quote('I have nothing to declare except my genius', 'Oscar Wild'),
    Quote('The truth is rarely pure and never simple', 'Oscar Wild'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote,
          () {
            setState(() {
              quotes.remove(quote);
            });
        }
        )).toList(),
      ),
    );
  }
}

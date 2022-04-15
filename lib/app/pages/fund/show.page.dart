import 'package:flutter/material.dart';
import 'widgets/fund/expense_list.widget.dart';
import 'widgets/fund/card.widget.dart';
import '../../../domain/fund/models/fund.model.dart';

class ShowFundPage extends StatefulWidget {
  final String title;
  final Fund fund;

  ShowFundPage({Key key, this.title, @required this.fund}) : super(key: key);

  @override
  _ShowFundPageState createState() => _ShowFundPageState();
}

class _ShowFundPageState extends State<ShowFundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fund",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).canvasColor,
        toolbarOpacity: 0.8,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: Column(
          children: <Widget>[
            FundCardWidget(fund: widget.fund),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: Text(
                "EXPENSES",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: ExpenseListWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

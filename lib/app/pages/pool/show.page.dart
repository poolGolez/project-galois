import 'package:flutter/material.dart';
import 'widgets/pool/expense_list.widget.dart';
import 'widgets/pool/card.widget.dart';
import '../../../domain/pool/models/pool.model.dart';

class ShowPoolPage extends StatefulWidget {
  final String title;
  final Pool pool;

  ShowPoolPage({Key key, this.title, @required this.pool}) : super(key: key);

  @override
  _ShowPoolPageState createState() => _ShowPoolPageState();
}

class _ShowPoolPageState extends State<ShowPoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pool",
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
            PoolCardWidget(pool: widget.pool),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("yeah, pressed!");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

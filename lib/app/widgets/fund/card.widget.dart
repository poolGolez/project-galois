import 'package:flutter/material.dart';
import '../../../domain/fund/models/fund.model.dart';

class FundCardWidget extends StatelessWidget {
  final Fund fund;

  const FundCardWidget({@required this.fund});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  fund.name,
                  style: Theme.of(context).textTheme.headline1,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'You owe Php 718.00 overall',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

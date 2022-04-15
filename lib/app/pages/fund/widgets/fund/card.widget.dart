import 'package:flutter/material.dart';
import '../../../../../domain/fund/models/fund.model.dart';

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
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: cardDetails(
                    'Your Total Share',
                    'Php 6,964.75',
                    CrossAxisAlignment.start,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: cardDetails(
                    'Amount Receivable',
                    'Php 11,480.08',
                    CrossAxisAlignment.end,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column cardDetails(
      String label, String amount, CrossAxisAlignment crossAlignment) {
    return Column(
      crossAxisAlignment: crossAlignment,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

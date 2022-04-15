import 'package:flutter/material.dart';

class BalancesListWidget extends StatelessWidget {
  const BalancesListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var balances = <Map>[
      {
        'participant': {'name': 'Paul Edward Golez'},
        'balance': -11480.08,
      },
      {
        'participant': {'name': 'Khrysler Gonzada'},
        'balance': 4992.34,
      },
      {
        'participant': {'name': 'Jenny Valeria'},
        'balance': 3487.74,
      },
      {
        'participant': {'name': 'Louis Vince Bacalso'},
        'balance': 1500.00,
      }
    ];

    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => Divider(thickness: 0.8),
      itemBuilder: (context, index) {
        var element = balances[index];
        var name = element['participant']['name'];
        var netBalance = element['balance'];
        var text = "You're all settled up.";

        if (netBalance > 0) {
          text = 'Amount Payable: ${netBalance}.';
        } else if (netBalance < 0) {
          text = 'Amount Receivable: ${-netBalance}.';
        }
        var nameTokens = name.split(' ');
        var avatarText =
            nameTokens[0][0].toUpperCase() + nameTokens.last[0].toUpperCase();

        return ListTile(
          leading: CircleAvatar(child: Text(avatarText)),
          title: Text(name),
          subtitle: Text(text),
        );
      },
      itemCount: balances.length,
    );
  }
}

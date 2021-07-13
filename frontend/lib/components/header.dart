import 'package:flutter/material.dart';

import '../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Circuit", style: Theme.of(context).textTheme.headline6),
        ElevatedButton.icon(
          onPressed: () {},
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5, vertical: defaultPadding)),
          label: Text("New Circuit"),
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}

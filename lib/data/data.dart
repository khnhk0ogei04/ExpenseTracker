import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionData = [
  {
    "icon": const FaIcon(FontAwesomeIcons.burger, color: Colors.white,),
    "color": Colors.yellow[700],
    "name": "Food",
    "totalAmount": "-\$45.00",
    "date": "Today",
  },
  {
    "icon": const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white),
    "name": "Shopping",
    "color": Colors.purple,
    "totalAmount": "-\$220.00",
    "date": "Today",
  },
  {
    "icon": const FaIcon(FontAwesomeIcons.heartCircleCheck, color: Colors.white),
    "name": "Health",
    "color": Colors.green,
    "totalAmount": "-\$90.00",
    "date": "Yesterday",
  },
  {
    "icon": const FaIcon(FontAwesomeIcons.plane, color: Colors.white),
    "name": "Travel",
    "color": Colors.blue,
    "totalAmount": "-\$79.00",
    "date": "Today",
  },
];


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Apptext extends StatelessWidget {
  String? data;
  double? size;
  Color? color;
  FontWeight? fw;
  TextAlign? align;


  Apptext({
    Key?key,
    required this.data,
    this.size=18,
    this.color,
    this.fw,
    this.align=TextAlign.left
    }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data.toString(),
    textAlign: align,
    style: TextStyle(fontSize: size,color: color,fontWeight: fw),
    );
  }
}
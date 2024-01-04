
import 'package:flutter/material.dart';

extension Spaces on int{

 SizedBox get height {
    return SizedBox(height: toDouble(),);
  }
 SizedBox get width {
    return SizedBox(width: toDouble(),);
  }
  EdgeInsets get symmetricPadding => EdgeInsets.symmetric(horizontal: toDouble(),vertical: 10);
}

extension Dates on DateTime{

  String get formateDate => "${this.day} / ${this.month} / ${this.year}";

  String get formateTime => "${this.hour} / ${this.minute} / ${this.second}";
  
}

extension Texts on String{
  Widget get textView => Text(this);
}


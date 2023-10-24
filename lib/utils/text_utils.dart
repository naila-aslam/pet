import 'package:flutter/material.dart';

class TextUtils {
  Text normal12(String text,
      {Color? color,
      // TextOverflow? textOverflow,
      int? maxLines,
      FontWeight? fontWeight,
      TextAlign? textAlign}) {
    return Text(
      text,
      // overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: fontWeight,
      ),
    );
  }

  Text normal14(String text,
      {Color? color,
      // TextOverflow? textOverflow,
      int? maxLines,
      FontWeight? fontWeight,
      TextAlign? textAlign}) {
    return Text(
      text,
      // overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(fontSize: 14, color: color, fontWeight: fontWeight),
    );
  }

  Text normal16(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      FontWeight? fontWeight,
      TextOverflow? textOverflow,
      decoration: TextDecoration.lineThrough}) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
      style: TextStyle(fontSize: 16, color: color, fontWeight: fontWeight),
    );
  }

  Text normal18(String text,
      {Color? color,
      int? maxLines,
      FontWeight? fontWeight,
      TextOverflow? textOverflow,
      TextAlign? textAlign}) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
      style: TextStyle(fontSize: 18, color: color, fontWeight: fontWeight),
    );
  }

  Text normal20(String text,
      {Color? color,
      int? maxlines,
      FontWeight? fontWeight,
      TextAlign? textAlign,
      TextOverflow? textOverflow}) {
    return Text(
      text,
      maxLines: maxlines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(fontSize: 20, color: color, fontWeight: fontWeight),
    );
  }

  Text normal22(String text,
      {Color? color,
      int? maxlines,
      FontWeight? fontWeight,
      TextOverflow? textOverflow,
      TextAlign? textAlign}) {
    return Text(
      text,
      maxLines: maxlines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: 22,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }

  Text normal24(String text,
      {Color? color,
      int? maxLines,
      FontWeight? fontWeight,
      TextOverflow? textOverflow,
      TextAlign? textAlign}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(fontSize: 24, color: color, fontWeight: fontWeight),
    );
  }

  Text normal26(String text,
      {Color? color,
      int? maxLines,
      FontWeight? fontWeight,
      TextOverflow? textOverflow,
      TextAlign? textAlign}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(fontSize: 26, color: color),
    );
  }

  Text normal28(String text,
      {Color? color,
      int? maxLines,
      FontWeight? fontWeight,
      TextOverflow? textOverflow,
      TextAlign? textAlign}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(fontSize: 28, color: color),
    );
  }

  Text normal30(String text,
      {Color? color, // this is used to show the colors
      int? maxLines,
      FontWeight? fontWeight, //how many lines after text
      TextOverflow? textOverflow, // will be shown in ...
      TextAlign?
          textAlign //text horizontally inside its parent widget's boundary using textAlign property7 different constants. start , end , left , right , center , justify and values
      }) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(fontSize: 30, color: color, fontWeight: fontWeight),
    );
  }
}

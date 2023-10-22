library button;

import 'package:color/color.dart';
import 'package:flutter/material.dart';
import 'package:navigate/navigate.dart';

class ButtonHelper {
  button(BuildContext context, String title, Color color,
      {page, textColor = AppColors.white}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: ElevatedButton(
        onPressed: () => Helper.nextPage(context, page),
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight:
                  page == null ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

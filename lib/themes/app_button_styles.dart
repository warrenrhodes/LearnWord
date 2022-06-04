import 'package:flutter/material.dart';

import 'app_colors.dart';

/// The big rounded button.
final ButtonStyle roundedBigButton = ButtonStyle(
    elevation: MaterialStateProperty.all(5.0),
    backgroundColor: MaterialStateProperty.all(AppColors.kDarkBlueDarkRGBO),
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    ));

/// The small rounded button.
final ButtonStyle roundedSmallButton = ButtonStyle(
    elevation: MaterialStateProperty.all(5.0),
    backgroundColor: MaterialStateProperty.all(AppColors.kBlueRGBO),
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 5, horizontal: 30)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ));

/// The small rounded button for dialogue box.
final ButtonStyle roundedDialogButton = ButtonStyle(
    maximumSize: MaterialStateProperty.all(Size(80, 36)),
    elevation: MaterialStateProperty.all(5.0),
    backgroundColor: MaterialStateProperty.all(AppColors.kBlueRGBO),
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ));

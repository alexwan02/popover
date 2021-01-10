import 'package:flutter/material.dart';

import '../popover_direction.dart';
import 'utils.dart';

class PopoverUtils {
  static const double arrowWidth = 24;
  static const double arrowHeight = 12;
  static const defaultShadow = [
    BoxShadow(color: Colors.black12, blurRadius: 5)
  ];

  PopoverUtils._();

  static PopoverDirection popoverDirection(
    Rect attachRect,
    Size size,
    PopoverDirection direction,
  ) {
    switch (direction) {
      case PopoverDirection.top:
        return (attachRect.top < size.height + arrowHeight)
            ? PopoverDirection.bottom
            : PopoverDirection.top;
      case PopoverDirection.bottom:
        return Utils().screenHeight >
                attachRect.bottom + size.height + arrowHeight
            ? PopoverDirection.bottom
            : PopoverDirection.top;
      case PopoverDirection.left:
        return (attachRect.left < size.width + arrowHeight)
            ? PopoverDirection.right
            : PopoverDirection.left;
      case PopoverDirection.right:
        return Utils().screenWidth > attachRect.right + size.width + arrowHeight
            ? PopoverDirection.right
            : PopoverDirection.left;
      default:
        return PopoverDirection.top;
    }
  }
}
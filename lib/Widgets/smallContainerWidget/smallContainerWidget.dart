// import 'package:flutter/material.dart';
// import 'package:portfolio/Constants/AppColor/appColor.dart';
//
// class SmallContainerWidget extends StatelessWidget {
//   final Widget? child;
//   const SmallContainerWidget({super.key,required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: MediaQuery.of(context).size.height*0.17,
//         width: MediaQuery.of(context).size.width*0.2,
//       decoration: BoxDecoration(
//           color: AppColor.lightGreyColor,
//           border: Border.all(color: AppColor.lightGreyColor),
//           borderRadius: BorderRadius.circular(8)
//       ),child: child,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';

class SmallContainerWidget extends StatefulWidget {
  final Widget? child;
  const SmallContainerWidget({super.key, required this.child});

  @override
  State<SmallContainerWidget> createState() => _SmallContainerWidgetState();
}

class _SmallContainerWidgetState extends State<SmallContainerWidget> {
  bool _isHovered = false;
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // 🔹 Responsive sizes
    double height;
    double width;

    if (screenWidth < 600) {
      // 📱 Mobile
      height = 80;
      width = 100;
    } else if (screenWidth < 1024) {
      // 💻 Tablet
      height = 90;
      width = 160;
    } else {
      // 🖥 Desktop
      height = 100;
      width = 200;
    }

    final bool isHoveredOrTapped = _isHovered || _isTapped;

    Widget container = AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      height: height,
      width: width,
      transform: isHoveredOrTapped
          ? (Matrix4.identity()..scale(1.05))
          : Matrix4.identity(),
      decoration: BoxDecoration(
        color: AppColor.lightGreyColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isHoveredOrTapped
              ? AppColor.redColor.withOpacity(0.8)
              : AppColor.lightGreyColor,
          width: isHoveredOrTapped ? 1.5 : 1,
        ),
        boxShadow: isHoveredOrTapped
            ? [
          BoxShadow(
            color: AppColor.redColor.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ]
            : [],
      ),
      child: Center(child: widget.child),
    );

    // 🖥 Desktop: Hover animation (MouseRegion)
    if (screenWidth >= 1024) {
      return MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: container,
      );
    }

    // 📱 Mobile & 💻 Tablet: Tap animation (GestureDetector)
    return GestureDetector(
      onTapDown: (_) => setState(() => _isTapped = true),
      onTapUp: (_) => setState(() => _isTapped = false),
      onTapCancel: () => setState(() => _isTapped = false),
      child: container,
    );
  }
}

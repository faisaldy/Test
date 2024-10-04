import 'package:flutter/material.dart';
import '../utils/color.dart';
import '../utils/dimension.dart';

class IconText extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final String title;
  final String subtitle;
  const IconText(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTap,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimension.height10 / 2),
        child: Column(
          children: [
            SizedBox(height: Dimension.height10),
            Row(
              children: [
                Icon(
                  iconData,
                  color: AppColors.theme,
                  size: Dimension.height20 * 2,
                ),
                SizedBox(width: Dimension.width10),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Dimension.font16,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Dimension.font12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
                SizedBox(width: Dimension.width10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: Dimension.height20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

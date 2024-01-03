import 'package:flutter/material.dart';

class OnBoardingTitleDescWidget extends StatelessWidget {
  const OnBoardingTitleDescWidget({
    super.key,
    required this.primary,
    required this.title,
    required this.desc,
    required this.isLastPage,
  });

  final Color primary;
  final bool isLastPage;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: isLastPage ? 90 : 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: primary,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black26,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

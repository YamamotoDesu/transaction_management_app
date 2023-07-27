// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ProfileGeneralInfoTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;

  const ProfileGeneralInfoTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 10,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultSpacing / 2, vertical: defaultSpacing / 2),
        child: Image.asset(imageUrl),
      ),
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.titleMedium?.copyWith(color: fontDark),
      ),
      subtitle: Text(
        subTitle,
        style:
            Theme.of(context).textTheme.titleSmall?.copyWith(color: fontLight),
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: fontLight,
      ),
    );
  }
}

class ProfileAccountInfoTile extends StatelessWidget {
  final String iconUrl;
  final String heading;
  const ProfileAccountInfoTile({
    Key? key,
    required this.iconUrl,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: defaultSpacing + 8),
            child: Image.asset(iconUrl),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
            child: Text(
              heading,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: fontDark),
            ),
          ),
          const Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: defaultSpacing),
                    child: Icon(Icons.keyboard_arrow_right, color: fontLight),
                  )))
        ],
      ),
    );
  }
}

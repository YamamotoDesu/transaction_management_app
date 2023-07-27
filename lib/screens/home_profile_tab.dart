// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:transaction_management_app/utils/constants.dart';

import '../widget/profile_account_info_title.dart';

class HomeProfileTab extends StatefulWidget {
  const HomeProfileTab({super.key});

  @override
  State<HomeProfileTab> createState() => _HomeProfileTabState();
}

class _HomeProfileTabState extends State<HomeProfileTab> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: fontLight,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: defaultSpacing),
            child: Icon(
              Icons.settings,
              color: fontLight,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultRadius)),
                    child: Image.asset(
                      "assets/images/avatar.jpeg",
                      width: 100,
                    ),
                  ),
                  Text(
                    "Kyo Yamamoto",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: fontDark,
                        ),
                  ),
                  Text(
                    "mynameisyamamotodesu@gmail.com",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: fontLight,
                        ),
                  ),
                  const Chip(
                    backgroundColor: primaryLight,
                    label: Text("Edit Profile"),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: defaultSpacing),
                  child: Text(
                    "General",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: fontDark,
                        ),
                  ),
                ),
                const SizedBox(
                  height: defaultSpacing,
                ),
                const ProfileGeneralInfoTile(
                  title: 'Bank Location',
                  subTitle: '7307 Grand Avenue. Flushing NY3293',
                  imageUrl: 'assets/icons/location-1.png',
                ),
                const ProfileGeneralInfoTile(
                  title: 'My Wallet',
                  subTitle: 'Manage your saved wallet',
                  imageUrl: 'assets/icons/wallet.png',
                ),
                const SizedBox(
                  height: defaultSpacing,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: defaultSpacing),
                  child: Text(
                    "Account",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: fontDark,
                        ),
                  ),
                ),
                const SizedBox(
                  height: defaultSpacing,
                ),
                const ProfileAccountInfoTile(
                  iconUrl: 'assets/icons/user-1.png',
                  heading: 'My Account',
                ),
                const SizedBox(
                  height: defaultSpacing,
                ),
                const ProfileAccountInfoTile(
                  iconUrl: 'assets/icons/bell.png',
                  heading: 'Notification',
                ),
                const SizedBox(
                  height: defaultSpacing,
                ),
                const ProfileAccountInfoTile(
                  iconUrl: 'assets/icons/lock-on.png',
                  heading: 'Privacy',
                ),
                const SizedBox(
                  height: defaultSpacing,
                ),
                const ProfileAccountInfoTile(
                  iconUrl: 'assets/icons/info-circle.png',
                  heading: 'About',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

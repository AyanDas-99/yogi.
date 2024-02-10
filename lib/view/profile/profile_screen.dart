import 'package:flutter/material.dart';
import 'package:yogi/view/profile/components/detailed_stat_pages.dart';
import 'package:yogi/view/profile/components/top_nav.dart';
import 'package:yogi/view/profile/components/user_details.dart';
import 'package:yogi/view/profile/components/yoga_stats.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  State<ProfileScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.scrollController,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopNav(),
          SizedBox(height: 10),
          UserDetails(),
          SizedBox(height: 20),
          YogaStats(),
          SizedBox(height: 25),
          DetailedStatPages(),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}

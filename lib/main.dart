import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_calling_app/view/UiScreens/GenderSelectScreen.dart';
import 'package:video_calling_app/view/UiScreens/Home/HomeScreen.dart';
import 'package:video_calling_app/view/UiScreens/IntroScreen.dart';
import 'package:video_calling_app/view/UiScreens/Live/LiveScreen.dart';
import 'package:video_calling_app/view/UiScreens/NicknameAddScreen.dart';
import 'package:video_calling_app/view/UiScreens/Profile/ProfileScreen.dart';
import 'package:video_calling_app/view/UiScreens/Region/CountryScreen.dart';
import 'package:video_calling_app/view/UiScreens/Region/LanguageScreen.dart';
import 'package:video_calling_app/view/UiScreens/SelectYourGoalScreen.dart';
import 'package:video_calling_app/view/UiScreens/SpleshScreen.dart';
import 'package:video_calling_app/view/UiScreens/TermsScreen.dart';
import 'package:video_calling_app/view/UiScreens/UploadImageScreen.dart';
import 'package:video_calling_app/view/UiScreens/UserBirthdayScreen.dart';
import 'package:video_calling_app/view/UiScreens/Home/VideoCallScreen.dart';

import 'provider/HomeProvider.dart';
import 'view/UiScreens/SelectGenderForVideoScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<HomeProvider>(
          create: (context) => HomeProvider(),
        )
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/": (context) => const SpleshScreen(),
            "/TermsScreen": (context) => const TermsScreen(),
            "/IntroScreen": (context) => const IntroScreen(),
            "/GenderSelect": (context) => const GenderSelectScreen(),
            "/UserBirthday": (context) => const UserBirthdayScreen(),
            "/NickName": (context) => const NickNameAddScreen(),
            "/UploadImage": (context) => const UploadImageScreen(),
            "/SelectYourGoal": (context) => const SelectYourGoalScreen(),
            "/SelectGenderForVideo": (context) =>
                const SelectGenderForVideoScreen(),
            "/HomeScreen": (context) => const HomeScreen(),
            "/VideoCallScreen": (context) => const VideoCallScreen(),
            "/LiveScreen": (context) => const LiveScreen(),
            "/CountryScreen": (context) => const CountryScreen(),
            "/LanguageScreen": (context) => const LanguageScreen(),
            "/ProfileScreen": (context) => const ProfileScreen(),
          },
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/screens/checkout_screen/checkout_screens_widgets/checkout_screen_widgets.dart';
import 'package:shop_mate/presentation/widgets/asset_card.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.close,
          color: AppColor.colorGrey3,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    BuildHeadingText2(text: "Welcome!"),
                    BuildSmallText(
                      text: 'Please enter your  data to continue',
                      color: AppColor.colorGrey2,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const BuildTextFormField(
                label: 'Email',
                hintText: "Enter your email",
                icon: Icons.person,
              ),
              const SizedBox(
                height: 10,
              ),
              const BuildTextFormField(
                label: 'Password',
                hintText: "Enter your password",
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColor.colorGrey2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: BuildSmallText(
                      text: "Or",
                      fontSize: 14,
                      color: AppColor.colorGrey2,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColor.colorGrey2,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildAssetCard(
                    asset: Image.asset(
                      'assets/images/google.com.png',
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  BuildAssetCard(
                    asset: SvgPicture.asset('assets/images/fb.svg'),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                height: 60,
                width: 0.9.sw,
                decoration: BoxDecoration(
                  color: AppColor.greenColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Center(
                  child: BuildSmallText(
                    text: "Login",
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
              GestureDetector(
                child: const BuildTextWithSignupLink(
                  text1: "Don't have an account?",
                  text2: "Signup",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildHeadingText2 extends StatelessWidget {
  const BuildHeadingText2({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 33.sp,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.99,
      ),
    );
  }
}


import 'package:bankjateng/utils/color.dart';
import 'package:bankjateng/view/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../controller/signin_controller.dart';
import '../../helper/routes.dart';
import '../../utils/assets.dart';
import '../../utils/big_text.dart';
import '../../utils/button_text.dart';
import '../../utils/dimension.dart';
import '../../utils/small_text.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(builder: (signin) {
      return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          child: SafeArea(
            child: Stack(
              children: [
                SizedBox(
                  height: Dimension.screenHeight,
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        color: AppColors.themeSecondary,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.white,
                      ))
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: Dimension.height20),
                    Padding(
                      padding: EdgeInsets.only(right: Dimension.width15),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(Dimension.height10 / 2),
                              child: const Icon(
                                Symbols.notifications,
                                color: AppColors.themeSecondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Form(
                      //key: signin.loginFormKey,
                      child: Expanded(
                          child: ListView(
                        children: [
                          //logo
                          Image(
                            image: const AssetImage(logobank),
                            width: Dimension.width10 * 15,
                            height: Dimension.height10 * 20,
                            fit: BoxFit.contain,
                          ),
                          Column(
                            children: [
                              BigText(
                                text: "Nama Aplikasi".tr,
                                textAlign: TextAlign.left,
                                color: AppColors.textWhite,
                                size: Dimension.font16,
                              ),
                              SmallText(
                                  text: "Slogan Aplikasi".tr,
                                  color: AppColors.textWhite,
                                  textAlign: TextAlign.left),
                            ],
                          ),
                          SizedBox(height: Dimension.height10),
                          Padding(
                            padding: EdgeInsets.only(
                                left: Dimension.height15,
                                right: Dimension.height15),
                            child: Container(
                              height: Dimension.screenHeight,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(Dimension.height10),
                                    topRight:
                                        Radius.circular(Dimension.height10),
                                  ),
                                  color: AppColors.textWhite),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimension.height15,
                                    vertical: Dimension.height10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    topContent(),
                                    inputText(),
                                    SizedBox(height: Dimension.height10),
                                    bottomContent(context),
                                    SizedBox(height: Dimension.height10 * 5),
                                    register()
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget topContent() {
    return GetBuilder<SignInController>(builder: (signin) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Dimension.height10),
            child: BigText(
              text: "Login".tr,
              textAlign: TextAlign.left,
              color: AppColors.textBlack,
              size: Dimension.font16,
            ),
          ),
        ],
      );
    });
  }

  Widget inputText() {
    return GetBuilder<SignInController>(builder: (signin) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //email
          BigText(
            text: "Email".tr,
            textAlign: TextAlign.left,
            color: AppColors.textBlack,
            size: Dimension.font12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Dimension.height10),
            child: TextFormField(
                //validator: ValidatorForm.validateEmail,
                onChanged: (value) {},
                onSaved: (value) {},
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: signin.emailController,
                style: TextStyle(
                    color: AppColors.themeSecondary,
                    fontWeight: FontWeight.w500,
                    fontSize: Dimension.font16),
                decoration: InputDecoration(
                    fillColor: const Color(0XFFF2F2F2),
                    filled: true,
                    isDense: true,
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: AppColors.themeSecondary,
                        fontSize: Dimension.font12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimension.radius15)),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimension.radius15)),
                        borderSide: BorderSide.none))),
          ),
          //password
          BigText(
            text: "Password".tr,
            textAlign: TextAlign.left,
            color: AppColors.textBlack,
            size: Dimension.font12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Dimension.height10),
            child: TextFormField(
                //validator: ValidatorForm.validateEmail,
                onChanged: (value) {},
                onSaved: (value) {},
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: signin.emailController,
                style: TextStyle(
                    color: AppColors.themeSecondary,
                    fontWeight: FontWeight.w500,
                    fontSize: Dimension.font16),
                decoration: InputDecoration(
                    fillColor: const Color(0XFFF2F2F2),
                    filled: true,
                    isDense: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: AppColors.themeSecondary,
                        fontSize: Dimension.font12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimension.radius15)),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimension.radius15)),
                        borderSide: BorderSide.none))),
          ),
          SizedBox(height: Dimension.height20),
          ButtonAndText(
            sizeHeight: Dimension.height10 * 4.5,
            text: "Login".tr,
            color: AppColors.themeSecondary,
            textColor: AppColors.textWhite,
            radius: Dimension.radius15,
            fontSize: Dimension.font16,
            onTap: () {
              Get.toNamed(RouteHelper.getInitial());
              
            },
          ),
        ],
      );
    });
  }

  Widget bottomContent(context) {
    return GetBuilder<SignInController>(builder: (signin) {
      return Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: Dimension.height10 * 2.4,
                width: Dimension.height10 * 2.4,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: Checkbox(
                    activeColor: AppColors.themeSecondary,
                    checkColor: AppColors.textWhite,
                    side: const BorderSide(
                        width: 1.5, color: AppColors.themeSecondary),
                    value: signin.check1,
                    onChanged: (newValue) {
                      signin.changeCheck1();
                      signin.update();
                    },
                  ),
                ),
              ),
              SizedBox(width: Dimension.height10),
              SmallText(
                text: "Ingat saya".tr,
                color: AppColors.themeSecondary,
                textAlign: TextAlign.left,
                size: Dimension.font12,
              ),
              SizedBox(width: Dimension.height10),
              //forget button
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  // Get.bottomSheet(
                  //     isScrollControlled: true,
                  //     clipBehavior: Clip.antiAliasWithSaveLayer,
                  //     const BottomSheetSignIn());
                },
                child: SmallText(
                  text: "Lupa password".tr,
                  color: AppColors.themeSecondary,
                  textAlign: TextAlign.right,
                ),
              ))
            ],
          ),
        ],
      );
    });
  }

  Widget register() {
    return Column(
      children: [
        SmallText(
          text: "Belum punya akun?".tr,
          color: AppColors.textBlack,
          textAlign: TextAlign.right,
          size: Dimension.font10,
        ),
        SizedBox(height: Dimension.height10),
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                border: Border.all(color: AppColors.textBlack, width: 0.5)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimension.width30,
                  vertical: Dimension.height10 - 3),
              child: SmallText(
                text: "Register".tr,
                color: AppColors.textBlack,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.right,
              ),
            ),
          ),
        )
      ],
    );
  }
}

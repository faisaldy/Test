import 'package:bankjateng/view/assets.dart';
import 'package:bankjateng/view/menu/layanan.dart';
import 'package:bankjateng/view/menu/pengaduan.dart';
import 'package:bankjateng/view/menu/produk.dart';
import 'package:bankjateng/view/menu/promo.dart';
import 'package:bankjateng/view/menu/simulasi.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../controller/dashboard_controller.dart';
import '../utils/color.dart';
import 'package:get/get.dart';
import '../utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashboard) {
      return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value:  SystemUiOverlayStyle(
              statusBarColor: AppColors.themeSecondary),
          child: SafeArea(
            // child: dashboard.listContent.elementAt(dashboard.tabIndex)
            child: IndexedStack(
              index: dashboard.tabIndex,
              children: [
                (dashboard.tabIndex == 0) ? const Layanan() : Container(),
                (dashboard.tabIndex == 1) ? const Pengaduan() : Container(),
                (dashboard.tabIndex == 2) ? const Produk() : Container(),
                (dashboard.tabIndex == 3) ? const Simulasi() : Container(),
                (dashboard.tabIndex == 4) ? const Promo() : Container(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(Dimension.height10),
            child: Material(
              child: GNav(
                
                  haptic: true, // haptic feedback
                  tabBorderRadius: Dimension.height10 * 4,
                  backgroundColor: AppColors.textWhite,
                  tabActiveBorder: Border.all(
                      color: AppColors.themeSecondary,
                      width: 1), // tab button border
             
                  curve: Curves.easeOutExpo, // tab animation curves
                  duration: const Duration(
                      milliseconds: 300), // tab animation duration
                  gap: 8, // the tab button gap between icon and text
                  color: AppColors.iconGrey, // unselected icon color
                  activeColor:
                      AppColors.textWhite, // selected icon and text color
                  iconSize: 15, // tab button icon size
                  tabBackgroundColor:
                      AppColors.themeSecondary, // selected tab background color
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimension.height20,
                      vertical: Dimension.height10), // navigation bar padding
                  selectedIndex: dashboard.tabIndex,
                  onTabChange: (index) {
                   
                    dashboard.changeTabIndex(index);
                  },
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'Layanan'.tr,
                      leading: ImageIcon(
                        const AssetImage(user),
                        color: dashboard.tabIndex == 0
                            ? AppColors.textWhite
                            : AppColors.iconGrey,
                        size: Dimension.iconSize16,
                      ),
                    ),
                    GButton(
                      icon: Icons.home,
                      text: 'Pengaduan'.tr,
                      leading: ImageIcon(
                         AssetImage(actionService),
                        color: dashboard.tabIndex == 1
                            ? AppColors.textWhite
                            : AppColors.iconGrey,
                        size: Dimension.iconSize16,
                      ),
                    ),
                    GButton(
                      icon: Icons.home,
                      text: 'Produk'.tr,
                      leading: ImageIcon(
                        const AssetImage(newspaper),
                        color: dashboard.tabIndex == 2
                            ? AppColors.textWhite
                            : AppColors.iconGrey,
                        size: Dimension.iconSize16,
                      ),
                    ),
                    GButton(
                      icon: Icons.home,
                      text: 'Simulasi'.tr,
                      leading: ImageIcon(
                        const AssetImage(user),
                        color: dashboard.tabIndex == 3
                            ? AppColors.textWhite
                            : AppColors.iconGrey,
                        size: Dimension.iconSize16,
                      ),
                    ), GButton(
                      icon: Icons.home,
                      text: 'Promo'.tr,
                      leading: ImageIcon(
                        const AssetImage(newsEvent),
                        color: dashboard.tabIndex == 4
                            ? AppColors.textWhite
                            : AppColors.iconGrey,
                        size: Dimension.iconSize16,
                      ),
                    ),

                  ]),
            ),
          ),
        ),
      );
    });
  }
}
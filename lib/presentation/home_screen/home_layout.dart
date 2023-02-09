import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/navigation/app_router.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Colors.lightBlue,
      routes: const [
        BreedsRoute(),
        ClientsBaseRouter(),
        ProfileBaseRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.black,
              unselectedColor: Colors.blueGrey,
              icon: const Icon(
                Icons.post_add,
                size: 30,
              ),
              title: Text(S.of(context).breeds),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.black,
              unselectedColor: Colors.blueGrey,
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              title: Text(S.of(context).clients),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.black,
              unselectedColor: Colors.blueGrey,
              icon: const Icon(
                Icons.settings,
                size: 30,
              ),
              title: Text(S.of(context).profile),
            )
          ],
        );
      },
    );
  }
}

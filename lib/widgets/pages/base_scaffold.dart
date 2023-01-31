import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:solution_starter/widgets/tokens/spacing.dart';

class BaseScaffold extends StatefulWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final bool? resizeToAvoidBottomInset;
  final Widget? bottomNavigationBar;
  final WillPopCallback? onSwipeBack;

  const BaseScaffold({
    Key? key,
    required this.body,
    this.resizeToAvoidBottomInset,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.onSwipeBack,
  }) : super(key: key);

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> with TickerProviderStateMixin {
  late AnimationController directController;
  late AnimationController directBodyController;
  late Animation<Offset> position;
  late Animation<Offset> minorPosition;
  late Animation<Offset> bodyMinorPosition;
  late StreamSubscription subscription;

  late Logger logger;

  _BaseScaffoldState();

  @override
  void initState() {
    super.initState();
    logger = getLogger('BaseScaffold');
    logger.i('Scaffold init');

    directController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
    );

    directBodyController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    position = Tween<Offset>(begin: const Offset(0.0, -4.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: directController, curve: Curves.decelerate));
    minorPosition = Tween<Offset>(begin: const Offset(0.0, 0.0), end: const Offset(0.0, 0.25))
        .animate(CurvedAnimation(parent: directController, curve: Curves.decelerate));
    bodyMinorPosition = Tween<Offset>(begin: const Offset(0.0, 0.0), end: const Offset(0.0, 0.05))
        .animate(CurvedAnimation(parent: directBodyController, curve: Curves.decelerate));

    var connectivityResult = Connectivity().checkConnectivity();
    connectivityResult.then((value) {
      logger.i('Network connection current status ${value.name}');
      connectivityAction(value);
    });

    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult connectivityResult) {
      logger.i('Network connection change status ${connectivityResult.name}');
      connectivityAction(connectivityResult);
    });
  }

  void connectivityAction(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.wifi || connectivityResult == ConnectivityResult.mobile) {
      directController.reverse();
      directBodyController.reverse();
    } else {
      directController.forward();
      directBodyController.forward();
    }
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
    directController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: widget.onSwipeBack,
      child: Scaffold(
        floatingActionButton: widget.floatingActionButton,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        appBar: _appBar(widget.appBar),
        body: Stack(
          children: [
            SlideTransition(
              position: bodyMinorPosition,
              child: widget.body,
            ),
            widget.appBar == null ? networkPanel() : const SizedBox(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget? _appBar(PreferredSizeWidget? appBar) {
    return appBar == null
        ? appBar
        : PreferredSize(
            preferredSize: appBar.preferredSize,
            child: Stack(
              children: [
                SlideTransition(
                  position: minorPosition,
                  child: appBar,
                ),
                networkPanel(),
              ],
            ),
          );
  }

  Widget networkPanel() {
    return SlideTransition(
      position: position,
      child: Container(
        decoration: const BoxDecoration(
          // color: CoreTheme(context).brandingTransactionsOther,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ),
        ),
        height: MediaQuery.of(context).padding.top + 36,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: Spacing.defaultPadding),
                child: Text(
                  'no internet connection',
                  /*style: CoreTheme(context).b1_16Regular.copyWith(
                    color: CoreTheme(context).textOnColor,
                  ),*/
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

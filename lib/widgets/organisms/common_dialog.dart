import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

import '../../generated/l10n.dart';
import '../templates/dialog_model.dart';

class _CommonDialogKey {
  static const Key yesLogOutKey = Key('yesLogOutKey');
  static const Key cancelLogOutKey = Key('cancelLogOutKey');
}
//TODO: uncommen and refactor this add string

void showHostUnavailableAlertDialog(BuildContext context) => showPlatformDialog(
      context: context,
      builder: (context) => BasicDialogAlert(
        title: Text(S.of(context).dialog_error),
        content: Text(S.of(context).dialog_host_unavailable_please_try_again_later),
        actions: <Widget>[
          BasicDialogAction(
            title: Text(S.of(context).ok),
            onPressed: () => AutoRouter.of(context).pop(),
          ),
        ],
      ),
    );
/*
void showUnknownErrorAlertDialog(BuildContext context, {required VoidCallback onRetry}) => showDialog(
      context: context,
      builder: (context) => DialogModal(
        iconType: IconType.error,
        header: S.of(context).opsnweHadATemporaryIssuesOnOurSideAndCould,
        description: S.of(context).pleaseTryAgain,
        primaryButton: ModalButtonDetails(
          title: S.of(context).tryAgain,
          callback: () {
            AutoRouter.of(context).pop();
            onRetry.call();
          },
        ),
      ),
    );



void showUnderDevelopmentDialog(BuildContext context, String content) => showDialog(
      context: context,
      builder: (context) => DialogModal(
        iconType: IconType.warning,
        header: S.of(context).underDevelopment,
        description: content,
        primaryButton: ModalButtonDetails(
          title: S.of(context).leave,
          callback: () {
            AutoRouter.of(context).pop();
          },
        ),
      ),
    );

void showConfirmLogoutDialog(BuildContext context, {required VoidCallback onConfirm}) => showPlatformDialog(
      context: context,
      builder: (context) => BasicDialogAlert(
        title: Text('${S.of(context).logOut}?'),
        actions: <Widget>[
          BasicDialogAction(
            title: Text(
              S.of(context).cancel,
              key: _CommonDialogKey.cancelLogOutKey,
            ),
            onPressed: () => AutoRouter.of(context).pop(),
          ),
          BasicDialogAction(
            title: Text(S.of(context).yesLogOut, key: _CommonDialogKey.yesLogOutKey),
            onPressed: onConfirm,
          ),
        ],
      ),
    );

void showBiometricCantActivateAlertDialog(BuildContext context) => showPlatformDialog(
      context: context,
      builder: (context) => BasicDialogAlert(
        title: Text(S.of(context).error),
        content: Text(S.of(context).cantActivateBiometrics),
        actions: <Widget>[
          BasicDialogAction(
            title: Text(S.of(context).ok),
            onPressed: () => AutoRouter.of(context).pop(),
          ),
        ],
      ),
    );*/

void showSoftUpdateDialog({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) => DialogModal(
      iconType: IconType.rocket,
      header: S.of(context).dialog_newVersionAvailable,
      // description: S.of(context).updateNowToEnjoyAllTheNewFeaturesAndImproved,
      primaryButton: ModalButtonDetails(
        // title: S.of(context).updateNow.toBookStyleCapitalization(),
        title: 'todo',
        callback: () {
         // LaunchReview.launch(writeReview: false);
          AutoRouter.of(context).pop();
        },
      ),
      secondaryButton: ModalButtonDetails(
        title: 'todo',
        //title: S.of(context).illUpdateLater,

        callback: () {
          AutoRouter.of(context).pop();
        },
      ),
    ),
  );
}

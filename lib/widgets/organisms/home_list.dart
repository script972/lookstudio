import 'package:aircode_starter/widgets/organisms/progress.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_list_view/flutter_list_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/model/breed_info.dart';
import '../../generated/assets/assets.gen.dart';
import '../../generated/l10n.dart';
import '../molecules/breed_cell.dart';

class DogBreedListWidget extends StatefulWidget {
  const DogBreedListWidget({
    super.key,
    required this.breeds,
    required this.onRefresh,
    required this.onLoading,
    required this.onContractClick,
  });

  final List<BreedInfo> breeds;
  final Future<void> Function() onRefresh;
  final Future<void> Function() onLoading;
  final Future<void> Function(BreedInfo) onContractClick;

  @override
  State<DogBreedListWidget> createState() => _DogBreedListWidgetState();
}

class _DogBreedListWidgetState extends State<DogBreedListWidget> with AutomaticKeepAliveClientMixin {
  final _refreshController = RefreshController(initialRefresh: false);
  static const defaultSize = 208.0;

  void _onRefresh() async {
    await widget.onRefresh();
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await widget.onLoading();
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (widget.breeds.isNotEmpty) {
      return SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: const MaterialClassicHeader(),
        footer: CustomFooter(
          height: 24,
          builder: (context, mode) {
            if (mode == LoadStatus.loading) {
              return const Center(child: CircleProgress());
            } else if (mode == LoadStatus.failed) {
              return GestureDetector(
                onTap: _onRefresh,
                child: Text(
                  S.current.dialog_error,
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: FlutterListView(
          delegate: FlutterListViewDelegate(
            (BuildContext context, int index) => BreedCellWidget(
              breed: widget.breeds[index],
              onContractClick: widget.onContractClick,
            ),
            childCount: widget.breeds.length,
          ),
        ),
      );
    } else {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 16),
          child: Column(
            children: [
              SvgPicture.asset(
                Assets.images.icons.logo.path,
                height: defaultSize,
                width: defaultSize,
                fit: BoxFit.fitHeight,
              ),
              Text(
                S.current.dialog_host_unavailable_please_try_again_later,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).disabledColor,
                    ),
              ),
            ],
          ),
        ),
      );
    }
  }
}

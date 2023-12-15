import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loadingControllerProvider =
    NotifierProvider<LoadingController, bool>(() => LoadingController());

// todo 뒤로가기 누를 때 false 로 자동 변경되도록
class LoadingController extends Notifier<bool> {
  void showLoading() {
    state = true;
  }

  void hideLoading() {
    state = false;
  }

  @override
  bool build() => false;
}

class CPLoading extends ConsumerWidget {
  final Widget? widget;

  const CPLoading({super.key, required this.widget});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = ref.watch(loadingControllerProvider);

    return Stack(children: [
      if(widget != null) widget!,
      Offstage(
        offstage: !isLoading,
        child: Stack(children: [
          ModalBarrier(
            color: Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.3),
            dismissible: false,
          ),
          Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ]),
      ),
    ]);
  }
}

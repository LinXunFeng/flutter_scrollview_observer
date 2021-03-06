import 'package:flutter/material.dart';
import 'package:scrollview_observer/scrollview_observer.dart';
import 'package:scrollview_observer/src/common/observer_controller.dart';

class GridObserverController extends ObserverController
    with ObserverControllerForScroll {
  GridObserverController({
    ScrollController? controller,
  }) : super(controller: controller);

  /// Dispatch a [GridViewOnceObserveNotification]
  dispatchOnceObserve({BuildContext? sliverContext}) {
    innerDispatchOnceObserve(
      sliverContext: sliverContext,
      notification: GridViewOnceObserveNotification(),
    );
  }
}

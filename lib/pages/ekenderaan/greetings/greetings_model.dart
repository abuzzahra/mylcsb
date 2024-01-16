import '/flutter_flow/flutter_flow_util.dart';
import '/pages/ekenderaan/nav_bar1/nav_bar1_widget.dart';
import 'greetings_widget.dart' show GreetingsWidget;
import 'package:flutter/material.dart';

class GreetingsModel extends FlutterFlowModel<GreetingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    navBar1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

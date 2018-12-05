import 'package:flutter/widgets.dart';

abstract class StatefulViewBase<VM> extends StatefulWidget {
  StatefulViewBase({Key key}) : super(key: key);

  VM get viewmodel;
  Widget build(BuildContext context);

  @override
  State<StatefulWidget> createState() {
    var state = StatefuleViewBaseState<VM>();
    state.viewmodel = this.viewmodel;
    return state;
  }
}

class StatefuleViewBaseState<VM> extends State<StatefulViewBase> {
  VM viewmodel;
  
  @override
  Widget build(BuildContext context) {
    return this.widget.build(context);
  }
}

library fighter;
import 'package:flutter/widgets.dart';
import 'package:todo_list/fighter/view_model_base.dart';

abstract class StatefulViewBase<VM extends ViewModelBase> extends StatefulWidget {
  StatefulViewBase({Key key}) : super(key: key);

  VM get viewmodel;
  Widget build(BuildContext context);

  @override
  StatefuleViewBaseState<VM> createState() {
    var state = StatefuleViewBaseState<VM>();
    state.viewmodel = this.viewmodel;
    this.viewmodel.state = state;
    return state;
  }
}

class StatefuleViewBaseState<VM extends ViewModelBase> extends State<StatefulViewBase> {
  VM viewmodel;

  @override
  Widget build(BuildContext context) {
    return this.widget.build(context);
  }

  void update() {
    this.setState(() => {});
  }
}

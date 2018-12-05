library fighter;
import 'package:flutter/widgets.dart';
import 'package:todo_list/fighter/view_base.dart';

class ObservableProperty<T, VM extends ViewModelBase> {
  VM viewmodel;
  
  T _value;
  T get value => _value;
    set value(v) {
      if (v != null && v == this._value) {
        return;
      }
      _value = v;
      this._notify();
    }

  void forceUpdateValue(T value) {
    this._value = value;
    this._notify();
  }

  void _notify() {
    this.viewmodel.update();
  }

  ObservableProperty({value, this.viewmodel}): this._value=value;
}

class ViewModelBase {
  StatefuleViewBaseState state;
  void update() {
    state.update();
  }
}

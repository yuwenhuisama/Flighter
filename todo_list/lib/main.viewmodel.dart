import 'fighter/view_model_base.dart';

class MainViewModel extends ViewModelBase {
  ObservableProperty<int, MainViewModel> counter;

  MainViewModel() {
    counter = ObservableProperty(value: 0, viewmodel: this);
  }
}

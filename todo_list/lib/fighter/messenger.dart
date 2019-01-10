library fighter;
import 'package:rxdart/rxdart.dart';

typedef void CallBack<P>(P param);
typedef void _CallBack(dynamic param);

class Messenger<T> {

  void register<P>(T token, CallBack<P> callback) {
    
  }

  void unregister(T token) {

  }
}
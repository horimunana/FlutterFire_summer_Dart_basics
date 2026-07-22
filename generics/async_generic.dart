// FutureOr<T> and List<E>: Generics in Flutter
// Flutter and Dart make heavy use of generics. Here are the most common ones you will encounter:

// Future<T>: an asynchronous value of type T
// Future<String> fetchName() async => 'Alice';

// List<E>, Map<K, V>, Set<E>: typed collections
// List<Widget> widgets = [Text('A'), Icon(Icons.star)];

// class Widget {
// }
// Map<String, dynamic> json = {'name': 'Alice', 'age': 25};

// FutureOr<T>: accepts either T directly or Future<T>
// FutureOr<String> getGreeting(bool async) {
//   if (async) return Future.value('Hello async');
//   return 'Hello sync';
// }

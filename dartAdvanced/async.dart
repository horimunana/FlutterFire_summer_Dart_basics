// A function that simulates a 2-second network call
Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data received');
}

// Future.wait() launches multiple async operations in parallel and waits for all to complete. Much faster than awaiting one after another!
Future<String> fetchUser() =>
    Future.delayed(Duration(seconds: 1), () => 'Alice');
Future<int> fetchScore() => Future.delayed(Duration(seconds: 1), () => 95);

Future<void> loadDashboard() async {
  // Both calls run AT THE SAME TIME (total: ~1 sec, not 2 sec)
  final results = await Future.wait([fetchUser(), fetchScore()]);
  print('User: ${results[0]}, Score: ${results[1]}');
}

// Error Handling with try/catch/async
Future<void> loadData() async {
  try {
    final data = await fetchUserData();
    print(data);
  } catch (e) {
    print('Error: $e');
  }
}

Future<void> main() async {
  print('Loading...');
  await loadDashboard();
  // String data = await fetchUserData();
  // print(data); // Data received
}

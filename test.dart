bool isConnected = false;

// Code
abstract class Database {
  void connect();
}

class MongoDb extends Database {
  @override
  void connect() {
    isConnected = true;
    String msg = isConnected
        ? "The database is connected"
        : "The database is failded to connected";
    print(msg);
  }
}

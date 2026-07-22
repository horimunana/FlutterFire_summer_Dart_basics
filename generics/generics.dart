class Box<T> {
  T content;
  Box(this.content);

  T getContent() => content;

  // Generic method inside a generic class
  Box<R> transform<R>(R Function(T) mapper) {
    return Box(mapper(content));
  }
}

void main() {
  var stringBox = Box<String>('A secret');
  var intBox = Box<int>(42);

  // Transform a Box<String> into a Box<int>
  var lengthBox = stringBox.transform((s) => s.length);
  print(lengthBox.getContent()); // 9
}

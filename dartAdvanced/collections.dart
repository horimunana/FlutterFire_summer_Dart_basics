final numbers = [1, 2, 3, 4, 5, 6];

// where: filter
final evens = numbers.where((n) => n.isEven).toList(); // [2, 4, 6]

// map: transform
final multipliedbytwo = numbers.map((n) => n * 2).toList();

// fold: reduce with initial value
final sum = numbers.fold(0, (acc, curr) => acc + curr);
void main() {
  print(sum);
}

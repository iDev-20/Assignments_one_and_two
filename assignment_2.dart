void main() {
  int squareNumber = 4;
  print(
      'The number of grains on square $squareNumber = ${square(squareNumber)}');
  print('Total number of grains on the chessboard = ${total()}');
}

BigInt square(final int n) {
  if (n < 1 || n > 64) {
    print('Square must be between 1 and 64');
    return BigInt.zero;
  }
  return BigInt.from(2).pow(n - 1);
}

BigInt total() {
  BigInt sum = BigInt.zero;

  for (var i = 1; i <= 64; i++) {
    sum += square(i);
  }
  return sum;
}

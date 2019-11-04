void main() {
  int perpangkatan(int n) {
    if (n == 0 || n == 1) return n;
    return n * n;
  }

  var result = perpangkatan(35);
  print(result);
}

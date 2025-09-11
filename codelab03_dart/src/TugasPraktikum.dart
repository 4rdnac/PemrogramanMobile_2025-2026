void main() {
  String nama = "Candra Ahmad Dani";
  String nim = "2341720187";

  for (int n = 0; n <= 201; n++) {
    if (isPrima(n)) {
      print("$n -> $nama | $nim");
    } else {
      print(n);
    }
  }
}

bool isPrima(int n) {
  if (n < 2) return false;  
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

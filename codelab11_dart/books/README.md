# books

## Soal 2

![Output](assets/01.png)

## Soal 3

Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!

substring(0, 450) membatasi tampilan hasil hanya 450 karakter pertama, sedangkan catchError menangani kesalahan saat pengambilan data dan menampilkan pesan “An error occurred”.

![Output](assets/02.gif)

## Soal 4

Jelaskan maksud kode langkah 1 dan 2 tersebut!

Fungsi returnOneAsync(), returnTwoAsync(), dan returnThreeAsync() mensimulasikan proses asinkron (seperti menunggu data dari server) dengan jeda 3 detik, lalu mengembalikan angka 1, 2, dan 3.
Fungsi count() memanggil ketiganya satu per satu menggunakan await, menjumlahkan hasilnya, lalu menampilkan totalnya ke layar melalui setState().

![Output](assets/03.gif)

## Soal 5

Jelaskan maksud kode langkah 2 tersebut!

getNumber() membuat objek Completer, memanggil calculate(), lalu mengembalikan Future-nya.
calculate() menunggu 5 detik, lalu menyelesaikan Future tersebut dengan nilai 42.
Jadi, setelah 5 detik, pemanggil getNumber() akan menerima hasil 42.

![Output](assets/04.gif)

## Soal 6

Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!

Perbedaannya yaitu penambahan catchError untuk menampilkan pesan “An error occurred” jika terjadi kesalahan.

![Output](assets/05.gif)

## Soal 7

![Output](assets/06.gif)

## Soal 8

Jelaskan maksud perbedaan kode langkah 1 dan 4!

FutureGroup butuh proses manual (add dan close), sedangkan Future.wait langsung menjalankan semua Future sekaligus.

![Output](assets/07.gif)

## Soal 9

![Output](assets/08.gif)

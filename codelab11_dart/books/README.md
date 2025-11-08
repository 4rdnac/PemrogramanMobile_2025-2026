# books

Soal 2

![Output](assets/01.png)

Soal 3

Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!

substring(0, 450) membatasi tampilan hasil hanya 450 karakter pertama, sedangkan catchError menangani kesalahan saat pengambilan data dan menampilkan pesan “An error occurred”.

![Output](assets/02.gif)

Soal 4

Jelaskan maksud kode langkah 1 dan 2 tersebut!

Fungsi returnOneAsync(), returnTwoAsync(), dan returnThreeAsync() mensimulasikan proses asinkron (seperti menunggu data dari server) dengan jeda 3 detik, lalu mengembalikan angka 1, 2, dan 3.
Fungsi count() memanggil ketiganya satu per satu menggunakan await, menjumlahkan hasilnya, lalu menampilkan totalnya ke layar melalui setState().

![Output](assets/03.gif)

Soal 5

Jelaskan maksud kode langkah 2 tersebut!

getNumber() membuat objek Completer, memanggil calculate(), lalu mengembalikan Future-nya.
calculate() menunggu 5 detik, lalu menyelesaikan Future tersebut dengan nilai 42.
Jadi, setelah 5 detik, pemanggil getNumber() akan menerima hasil 42.

![Output](assets/04.gif)

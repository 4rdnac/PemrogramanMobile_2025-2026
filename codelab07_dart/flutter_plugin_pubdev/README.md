# flutter_plugin_pubdev

Nama: Candra Ahmad Dani 

NIM: 234170187

Langkah 2:
Menambahkan plugin `auto_size_text` agar teks dapat menyesuaikan ukuran font secara otomatis sesuai ruang tampilan. Plugin ini diambil dari pub.dev melalui perintah `flutter pub add auto_size_text`.

Langkah 5:
Menambahkan variabel `text` dan parameter di constructor agar widget `RedTextWidget` dapat menerima input teks dari luar. Tanpa ini, akan muncul error karena variabel `text` belum didefinisikan.

Langkah 6:
Terdapat dua widget:

`RedTextWidget` (dengan AutoSizeText) menyesuaikan ukuran teks secara otomatis agar muat dalam lebar container.

`Text` biasa tidak menyesuaikan ukuran teks sehingga bisa terpotong.

Penjelasan singkat tiap parameter pada plugin auto_size_text
* `key` Mengatur bagaimana satu widget diganti oleh widget lain di pohon widget.
* `textKey` Menetapkan key khusus untuk widget Text di dalamnya.
* `style` Mengatur gaya teks seperti warna, ukuran huruf, dan jenis font.
* `minFontSize` Ukuran huruf terkecil saat teks menyesuaikan ruang.
* `maxFontSize` Ukuran huruf terbesar yang diizinkan.
* `stepGranularity` Jarak perubahan ukuran font saat penyesuaian otomatis.
* `presetFontSizes` Daftar ukuran huruf yang sudah ditentukan (harus urut menurun).
* `group` Menyamakan ukuran teks beberapa AutoSizeText agar konsisten.
* `textAlign` Menentukan perataan teks secara horizontal (kiri, kanan, tengah, dll).
* `textDirection` Menentukan arah teks, misalnya kiri ke kanan (LTR) atau kanan ke kiri (RTL).
* `locale` Menentukan lokal bahasa untuk memilih font yang sesuai.
* `softWrap` Menentukan apakah teks boleh pindah baris di titik pemisah lunak.
* `wrapWords` Mengatur apakah kata panjang boleh dibungkus agar muat.
* `overflow` Mengatur tampilan teks saat meluap, misalnya ellipsis (...).
* `overflowReplacement` Widget pengganti jika teks meluap dan tidak muat.
* `textScaleFactor` Faktor skala yang mempengaruhi ukuran font dan batas ukurannya.
* `maxLines` Jumlah maksimum baris teks yang boleh ditampilkan.
* `semanticsLabel` Label alternatif untuk pembaca layar (aksesibilitas).

Output 

![Output](images/1.png)
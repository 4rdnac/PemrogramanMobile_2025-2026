# bloc_random_candra

## Soal 13

Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

Praktikum ini ingin menunjukkan cara kerja pola BLoC dengan cara memisahkan logika dan tampilan. Bagian BLoC-nya ada di kelas `RandomNumberBloc`, yaitu tempat tombol mengirim perintah, BLoC membuat angka random, lalu angka itu dikirim kembali ke UI lewat stream. Jadi UI hanya menampilkan data, sedangkan BLoC yang mengolahnya.

Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![Output](assets/01.gif)

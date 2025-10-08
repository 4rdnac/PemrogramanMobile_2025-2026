import '../models/item.dart';

class ItemService {
  static List<Item> getItems() {
    return [
      Item(
        name: 'Fantech Shooter III WGP13S - Multi-Platform Hall-Effect Gamepad',
        description: 'WGP13S Gamepad adalah controller yang dirancang untuk memberikan pengalaman bermain game yang nyaman dan enak. Dilengkapi Hall-Effect sensor untuk analog dan trigger, meminimalisir drift. Kompatibel PC, Switch, Android, iOS.',
        price: 259000,
        image: 'https://down-id.img.susercontent.com/file/id-11134207-7r98p-lzons73u13habc',
        stock: 15,
        rating: 4.7,
      ),
      Item(
        name: 'Logitech M240 Mouse Wireless Bluetooth',
        description: 'Logitech M240 Wireless Bluetooth Mouse adalah mouse nirkabel yang dirancang untuk memberikan kenyamanan dan kemudahan dalam penggunaan sehari-hari, baik untuk bekerja, belajar, atau sekadar browsing. Dengan koneksi Bluetooth, mouse ini cocok banget buat kamu yang pengen bebas kabel dan tetap praktis.',
        price: 249000,
        image: 'https://down-id.img.susercontent.com/file/id-11134207-7r990-lzznyjgol0zp99.webp',
        stock: 8,
        rating: 4.9,
      ),
      Item(
        name: 'Steelseries Arctis Nova 3X For Xbox Series Wireless & Bluetooth - Gaming Headset',
        description: 'SteelSeries Arctis Nova 3X adalah headset gaming nirkabel yang dirancang khusus untuk Xbox Series, tapi juga kompatibel dengan berbagai platform lainnya lewat koneksi Bluetooth.',
        price: 1875000,
        image: 'https://down-id.img.susercontent.com/file/id-11134207-7rbk3-map828fpq8m6a9@resize_w450_nl.webp',
        stock: 5,
        rating: 4.9,
      ),
      Item(
        name: 'LG Monitor UltraGear 27 inci Full HD IPS - 180Hz - 1ms (GtG) - HDR10 - 27GS60F-B',
        description: 'LG UltraGear 27GS60F-B adalah monitor gaming 27 inci yang dirancang khusus untuk memberikan pengalaman bermain yang smooth dan imersif, berkat teknologi-teknologi canggih seperti 180Hz refresh rate, 1ms response time, dan HDR10. Dengan layar IPS, monitor ini nggak cuma unggul dari segi performa, tapi juga kualitas warna yang tajam dan akurat.',
        price: 2490000,
        image: 'https://down-id.img.susercontent.com/file/id-11134207-81ztc-mfj4domkj2mh32@resize_w450_nl.webp',
        stock: 12,
        rating: 4.6,
      ),
      Item(
        name: 'Rexus SH600 Keyboard Gaming Mechanical 65% Layout - Full Key Anti-Ghosting',
        description: 'Rexus SH600 adalah keyboard gaming mechanical dengan layout 65% yang dirancang untuk memberikan performa tinggi dan pengalaman mengetik atau gaming yang nyaman, tanpa mengorbankan ruang meja. Dengan desain kompak, fitur full key anti-ghosting, dan switch mechanical yang responsif, SH600 menjadi pilihan yang solid untuk gamer atau profesional yang menginginkan keyboard dengan kualitas dan fungsionalitas yang unggul.',
        price: 199000,
        image: 'https://down-id.img.susercontent.com/file/id-11134207-7ra0n-mcugrbd9nc1ha9.webp',
        stock: 0,
        rating: 4.8,
      ),
      Item(
        name: 'JBL Go 2 Portable Bluetooth Speaker Garansi Resmi',
        description: 'JBL Go 2 adalah portable Bluetooth speaker kecil dengan kualitas suara jernih dan bass yang cukup, meski ukurannya kompak. Dilengkapi dengan fitur tahan air IPX7, speaker ini bisa digunakan di dekat air tanpa khawatir rusak.',
        price: 1550000,
        image: 'https://down-id.img.susercontent.com/file/40a83134c52ce31b4bfcdc798238813b@resize_w450_nl.webp',
        stock: 10,
        rating: 4.7,
      ),
    ];
  }
}
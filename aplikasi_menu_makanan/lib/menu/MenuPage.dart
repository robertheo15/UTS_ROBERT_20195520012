import 'package:flutter/material.dart';

//ignore: must_be_immutable
class MenuPage extends StatelessWidget {
  Map<String, String> names = {
    'Sate': 'Sate Ayam',
    'Gimbap': 'Gimbap',
    'Mie-ayam': 'Mie Ayam',
    'Nasi-Padang': 'Nasi Padang',
    'Pizza': 'Pizza',
    'Ramen': 'Ramen',
    'Nasi-Campur': 'Nasi-Campur',
    'Soto-Medan': 'Soto-Medan',
    'Ayam-geprek': 'Ayam-geprek',
  };
  Map<String, String> desc = {
    'Sate':
        '''Sate atau satai adalah makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu. Sate disajikan dengan berbagai macam bumbu yang bergantung pada variasi resep sate. Daging yang dijadikan sate antara lain daging ayam, kambing, domba, sapi, babi, kelinci, kuda, dan lain-lain.''',
    'Gimbap':
        '''Gimbap adalah jenis makanan Korea yang terdiri dari nasi yang dibungkus dengan rumput laut. Gimbap populer sebagai makanan yang dibawa piknik, hiking atau aktivitas lain di luar ruangan.''',
    'Mie-ayam':
        '''Mi ayam, mie ayam atau bakmi ayam adalah hidangan Indonesia yang terbuat dari mie gandum kuning yang dibumbui dengan daging ayam yang biasanya dipotong dadu. Hidangan ini banyak terpengaruh dengan teknik penyajian kuliner yang digunakan dalam hidangan Tiongkok. Di Indonesia, Mi ayam merupakan hidangan Tionghoa-Indonesia yang sangat populer. Mie ayam sering dijual sebagai hidangan jalanan oleh pedagang kaki lima dengan gerobak keliling sederhana, yang biasanya berkeliling di jalan-halan sekitar perumahan warga. Mie ayam juga merupakan hidangan populer yang disajikan di warung makan kecil pinggir jalan, hingga restoran atau rumah makan besar.''',
    'Nasi-Padang':
        '''Nasi padang adalah nasi putih yang disajikan dengan berbagai macam lauk-pauk khas Indonesia. Kata padang merujuk pada ibu kota provinsi Sumatra Barat: Padang. Nasi padang adalah sebuah hidangan yang disajikan secara lengkap secara prasmanan dengan daging, ikan, sayuran, dan makanan pedas dimakan dengan nasi putih, itu adalah komoditas ekspor paling terkenal dan masyarakat Minangkabau mempunyai kontribusi yang besar untuk masakan Indonesia.''',
    'Pizza':
        '''Piza (menurut KBBI) (atau pizza) adalah hidangan gurih dari Italia sejenis adonan bundar dan pipih, yang dipanggang di oven dan biasanya dilumuri saus tomat serta keju dengan bahan makanan tambahan lainnya yang bisa dipilih. Keju yang dipakai biasanya mozzarella atau "keju pizza", bisa juga keju parmesan dan beberapa keju lainnya.''',
    'Ramen':
        '''Ramen (拉麺;ラーメン) adalah masakan mi kuah Jepang yang berasal dari Tiongkok. Orang Jepang juga menyebut ramen sebagai chuka soba (中華そば soba dari Tiongkok) atau shina soba (支那そば) karena soba atau o-soba dalam bahasa Jepang sering juga berarti mi.''',
    'Nasi-Campur':
        '''Nasi campur adalah masakan khas Indonesia. Makanan ini terdiri dari nasi putih yang dihidangkan dengan bermacam-macam lauk-pauk. Lauk yang digunakan adalah sambal goreng, abon, serundeng, tahu goreng, ikan goreng, telur dan lain-lain. Tergantung dari warung atau rumah makan yang menyajikannya nasi campur dapat memiliki variasi tersendiri. Masakan ini juga sering dijual dalam bungkus kertas atau daun pisang''',
    'Soto-Medan':
        '''Soto, sroto, sauto, tauto, atau coto adalah makanan khas Indonesia seperti sop yang terbuat dari kaldu daging dan sayuran. Daging yang paling sering digunakan adalah daging sapi dan ayam, tetapi ada pula yang menggunakan daging babi atau kambing. Berbagai daerah di Indonesia memiliki soto khas daerahnya masing-masing dengan komposisi yang berbeda-beda, misalnya soto Madura, soto Kediri, soto Pemalang, soto Lamongan, soto Jepara, soto Semarang, soto Kudus, soto Betawi, soto Padang, soto Bandung, sroto Sokaraja, soto Banjar, soto Medan, dan coto Makassar. Soto juga diberi nama sesuai isinya, misalnya soto ayam, soto babat, atau soto kambing. Ada pula soto yang dibuat dari daging kaki sapi yang disebut dengan soto sekengkel.''',
    'Ayam-geprek':
        '''Ayam geprek (bahasa Jawa: ꦥꦶꦠꦶꦏ꧀​ꦒꦼꦥꦿꦺꦏ꧀, translit. Pitik geprèk) adalah makanan ayam goreng tepung khas Indonesia yang diulek atau dilumatkan bersama sambal bajak. Kini ayam geprek telah menjadi hidangan populer yang dapat ditemukan di hampir semua kota besar di Indonesia, tetapi asal mula ayam geprek berasal dari kota Yogyakarta.''',
  };

  final String value;
  // konstruktor
  MenuPage({key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.value),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/${this.value}.jpg',
              fit: BoxFit.fill,
            ),
            Container(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 15.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(names[this.value],
                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold)),
                    ]),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                desc[this.value],
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

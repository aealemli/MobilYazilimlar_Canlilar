class Canli {
  String? Ad;
  int? Yas;
  bool? Cinsiyet;

  Canli({this.Ad, this.Yas, this.Cinsiyet});

  String Yurume() => "${this.Ad} isimli canlı yürüyor";
}

class insan extends Canli {
  String? soyad;
  bool? gozluk;
  double? aylik_gelir;
  static double? Vize;
  static double? Final;

  insan(String ad, String soyad, bool gozluk, double gelir) {
    this.Ad = ad;
    this.soyad = soyad;
    this.gozluk = gozluk;
    this.aylik_gelir = gelir;
  }

  insan.Not(double v, double f) {
    Vize = v;
    Final = f;
  }

  String Kosma() {
    return "${this.Ad} ${this.soyad} koşuyor";
  }

  String gozluklumu() {
    if (this.gozluk == true) {
      return "Bu kişi gözlük takıyor..";
    } else {
      return "Bu kişi gözlük takmıyor..";
    }
  }

  static double Ortalama() {
    print("Ortalamanız:");
    return (30 / 100) * (Vize ?? 0) + (Final ?? 0) * (70 / 100);
  }

  Bitti() {
    return "\n${this.Ad} ${this.soyad}'nin ödevi bitti";
  }
}

void main(List<String> args) {
  var canli = new Canli();
  canli.Ad = "İnsan";
  canli.Cinsiyet = true;
  canli.Yas = 20;

  print(canli.Yurume());

  var kisi = new insan("Abdullah Ege", "Alemli", false, 12500);

  print(kisi.Yurume() + "\n");
  print(
      "${kisi.Ad} kişisinin aylık geliri: ${kisi.aylik_gelir} tl \n${kisi.Ad} ${kisi.soyad} kişisinin gözlük bilgisi şu şekildedir:" +
          "\n\t" +
          "${kisi.gozluklumu()}" +
          "\n");
  print(kisi.Kosma() + "\n");
  insan.Not(80, 56);

  print(insan.Ortalama());
  print(kisi.Bitti());
}

class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {this.id,
      this.price,
      this.title,
      this.subTitle,
      this.description,
      this.image});
}

// Ürünler listesi
List<Product> products = [
  Product(
    id: 1,
    price: 119,
    title: "Kablosuz kulaklık",
    subTitle: "Apple v1857500",
    image: "images/airpod.png",
    description:
        "Yeni AirPods, akıllı bir tasarımı çığır açan bir teknoloji ve kristal netliğinde bir ses kalitesiyle buluşturuyor. Gücünü yeni Apple H1 kulaklık çipinden alan AirPods ile şimdi ellerinizi kullanmadan yalnızca sesinizle Siri’ye erişebilirsiniz.",
  ),
  Product(
    id: 2,
    price: 999,
    title: "Telefon",
    subTitle: "Samsung a1582z50",
    image: "images/mobile.png",
    description:
        "Teknolojik yeniliklerin nereye kadar ulaşacağını kestiremeyen kullanıcılar, Samsung’un geliştirdiği ve bünyesinde barındırdığı yenilikçi özelliklerle öne çıkan telefonlarla şaşırmaya devam ediyor.",
  ),
  Product(
    id: 3,
    price: 19,
    title: "3D Gözlük",
    subTitle: "Vestel c187320",
    image: "images/class.png",
    description:
        "4.7-6.1 inç Android ve IOS akıllı ceptelefonları ile uyumludur. 3D stereo ses, 42 MM ses ünitesi ile Bluetoothstereo kulaklık ile birlikte gelir.",
  ),
  Product(
    id: 4,
    price: 29,
    title: "Kulaklık",
    subTitle: "LG v158210",
    image: "images/headset.png",
    description:
        "mikrofonlu kulaküstü kablosuz mavi kulaklık, çok yönlü ve pratik kullanıma yönelik teknik özellikleriyle öne çıkıyor. Etkileyici performansıyla kullanıcılardan tam not alan kablosuz kulaklık, sunduğu ses kalitesi sayesinde müzik dinlerken.",
  ),
  Product(
    id: 5,
    price: 89,
    title: "Ses Kaydedici",
    subTitle: "Vestel s15480",
    image: "images/speaker.png",
    description:
        "Mini Ses Kaydedici, Yüksek Çözünürlüklü Kompakt Tasarım, Taşınabilir El Tipi, Tv Çıkışı, Tv Monitörü Bağlantısı Dahili Lityum Polimer Pil Sürdürülebilir. Destek 32Gb Tf Kartı Maks.(Hafıza Kartı Dahil Değildir)",
  ),
  Product(
    id: 6,
    price: 49,
    title: "Web kamerası",
    subTitle: "Huawei d125800",
    image: "images/camera.png",
    description:
        "USB2.0 ile uyumludur. Gerçek tak ve çalıştır USB web kamerası, sürücüsüz. Web kamerası full HD 1080p görüntülü görüşme (1920 x 1080 piksel) için kullanılabilir ve video konferans, iş toplantısı ve evde çalışma için uygundur.",
  ),
];

class HomePageBanner {
  final int id;
  final String title;
  final String subtitle;
  final String thumbnailUrl;

  HomePageBanner(
    this.id,
    this.title,
    this.subtitle,
    this.thumbnailUrl,
  );
}

List<HomePageBanner> homePageBannerList = [
  HomePageBanner(
      1,
      "GİRİŞİMCİLİK EKOSİSTEMİNİN KALBİ ",
      "İnnopark yürüttüğü ulusal/uluslararası girişimcilik programları ve projeleriyle bölgede girişimcilik ekosisteminin kalbinin attığı yerdir",
      "https://innopark.com.tr/wp-content/uploads/2020/01/rocket2.jpg"),
  HomePageBanner(
      2,
      "BÖLGENİN İNOVASYON ÜSSÜ İNNOPARK",
      "Yüksek Katma Değerli Teknoloji Üretimine Odaklanmış  OSB Merkezli Teknoloji Geliştirme Bölgesi",
      "https://innopark.com.tr/wp-content/uploads/2021/03/Basliksiz-1-1.jpg"),
  HomePageBanner(3, " ", " ",
      "https://innopark.com.tr/wp-content/uploads/2020/01/innopark-1.jpg?id=33659"),
  HomePageBanner(
      4,
      "KAMU-ÜNİVERSİTE-SANAYİ İŞBİRLİKLERİNİN MERKEZİ ",
      "İnnopark Konya Teknoloji Geliştime Bölgesi; 7 üniversite ortaklı olmanın yanısıra özel sekörün önde gelen kurum ve kuruluşlarının temsilcilerinin ağırlıklı olarak yönetimde olduğu bir TGB olarak bölgedeki Kamu-Üniversite-Sanayi İşbirliklerinin merkezi olmaya devam etmektedir",
      "https://innopark.com.tr/wp-content/uploads/2020/01/kusi2.jpg"),
  HomePageBanner(
      5,
      "AR-GE İNOVASYON AKTÖRLERİNİN EV SAHİBİ  ",
      "Innopark;şirket yapısı,ortakları,yürüttüğü projeler ve konumu nedeniyle bölgeinin tüm Ar-Ge ve İnovasyon aktörlerine ev sahibi yapan,ulusal ve uluslararası bağlamda güçlü network ortamına sahip bir teknoparktır",
      "https://innopark.com.tr/wp-content/uploads/2020/01/aktorler.jpg"),
];

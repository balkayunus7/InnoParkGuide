class HomePageBanner {
  final int id;
  final String title;
  final String thumbnailUrl;

  HomePageBanner(this.id, this.title, this.thumbnailUrl);
}

List<HomePageBanner> homePageBannerList = [
  HomePageBanner(1, "title",
      "https://innopark.com.tr/wp-content/uploads/2021/11/Slider-son-50-scaled.jpg"),
  HomePageBanner(2, "title",
      "https://innopark.com.tr/wp-content/uploads/2021/03/Basliksiz-1-1.jpg"),
  HomePageBanner(3, "title",
      "https://innopark.com.tr/wp-content/uploads/2020/01/innopark-1.jpg?id=33659"),
];

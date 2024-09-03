class FoodAddModel {
  final int sepet_yemek_id;
  final String yemek_adi;
  final String yemek_resim_adi;
  final int yemek_fiyat;
  int yemek_siparis_adet;
  final String kullanici_adi;

  FoodAddModel({
      required this.sepet_yemek_id,
      required this.yemek_adi,
      required this.yemek_resim_adi,
      required this.yemek_fiyat,
      required this.yemek_siparis_adet,
      required this.kullanici_adi});

  factory FoodAddModel.fromJson(Map<String, dynamic> json) {
    return FoodAddModel(
      sepet_yemek_id: int.parse(json["sepet_yemek_id"]),
      yemek_adi: json['yemek_adi'],
      yemek_resim_adi: json['yemek_resim_adi'],
      yemek_fiyat: int.parse(json["yemek_fiyat"]),
      yemek_siparis_adet: int.parse(json["yemek_siparis_adet"]),
      kullanici_adi: json['kullanici_adi'],
    );
  }
}

class FoodModel {
  final String? yemek_id;
  final String? yemek_adi;
  final String? yemek_resim_adi;
  final String? yemek_fiyat;

  FoodModel({
    required this.yemek_id,
    required this.yemek_adi,
    required this.yemek_resim_adi,
    required this.yemek_fiyat,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      yemek_id: json['yemek_id'],
      yemek_adi: json['yemek_adi'],
      yemek_resim_adi: json['yemek_resim_adi'],
      yemek_fiyat: json['yemek_fiyat'],
    );
  }
}

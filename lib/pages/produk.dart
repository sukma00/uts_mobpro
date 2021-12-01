// ignore: slash_for_doc_comments
/*
 * Nama   : sukma
*/
class ProductModel {
  final String? namaproduk;
  final String? gambar;
  final num? harga;
  final int? kodewarna;

  ProductModel({
    this.namaproduk,
    this.gambar,
    this.harga,
    this.kodewarna,
  });

  List<ProductModel> get listProduct => [
        ProductModel(
          namaproduk: 'Instax Mini Mint 7+',
          gambar: 'assets/images/instax_mini_7_plus_mint_r.png',
          harga: 49.90,
          kodewarna: 0xff70b1a1,
        ),
        ProductModel(
          namaproduk: 'Instax Mini Blue 7+',
          gambar: 'assets/images/instax_mini_7_plus_blue_r.png',
          harga: 50.90,
          kodewarna: 0xff77a0c6,
        ),
        ProductModel(
          namaproduk: 'Instax Mini Choral 7+',
          gambar: 'assets/images/instax_mini_7_plus_choral_r.png',
          harga: 51.90,
          kodewarna: 0xffb0463c,
        ),
        ProductModel(
          namaproduk: 'Instax Mini Pink 7+',
          gambar: 'assets/images/instax_mini_7_plus_pink_r.png',
          harga: 52.90,
          kodewarna: 0xfffcf9496,
        ),
        ProductModel(
          namaproduk: 'Instax Mini Lavender 7+',
          gambar: 'assets/images/instax_mini_7_plus_lavender_r.png',
          harga: 53.90,
          kodewarna: 0xff855f8c,
        ),
      ];
}

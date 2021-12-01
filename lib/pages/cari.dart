import 'package:flutter/material.dart';
import 'package:mopro/pages/produk.dart';

// ignore: slash_for_doc_comments
/**
 * Nama   : sukma
 */

class SearchInterval with ChangeNotifier {
  final List<ProductModel> daftarProduk;

  SearchInterval(this.daftarProduk) {
    searchControl.addListener(() {
      if (searchControl.text.isNotEmpty) {
        cari = true;
      }
    });
  }

  bool _cari = false;
  FocusNode _focusNode = FocusNode();
  TextEditingController _searchControl = TextEditingController();
  List<ProductModel> _searchResult = [];

  bool get cari => _cari;

  set cari(bool newValue) {
    _cari = newValue;
    notifyListeners();
  }

  FocusNode get focusNode => _focusNode;

  set focusNode(FocusNode newValue) {
    _focusNode = newValue;
    notifyListeners();
  }

  TextEditingController get searchControl => _searchControl;

  set searchControl(TextEditingController newValue) {
    _searchControl = newValue;
    notifyListeners();
  }

  List<ProductModel> get searchResult => _searchResult;

  set searchResult(List<ProductModel> newValue) {
    _searchResult = newValue;
    notifyListeners();
  }

  Icon get iconSearch {
    if (cari) {
      return const Icon(
        Icons.close,
        color: Colors.white,
      );
    } else {
      return const Icon(
        Icons.search,
        color: Colors.white,
      );
    }
  }

  void searchOperation(String searchText) {
    searchResult.clear();
    if (searchText.isNotEmpty) {
      cari = true;
      for (int i = 0; i < daftarProduk.length; i++) {
        ProductModel data = daftarProduk[i];
        if (data.namaproduk!.toLowerCase().contains(searchText.toLowerCase())) {
          searchResult.add(data);
        }
      }
    } else {
      searchResult.clear();
      cari = false;
    }
  }
}

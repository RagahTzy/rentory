// lib/data/services/product_service.dart
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/product.dart';

class ProductService {
  static List<Product> _products = [];
  static List<Category> _categories = [];
  static bool _initialized = false;

  static Future<void> init() async {
    if (_initialized) return;
    
    // Load products
    final productsJson = await rootBundle.loadString('lib/data/dummy/products.json');
    final List<dynamic> productsList = jsonDecode(productsJson);
    _products = productsList.map((e) => Product.fromJson(e)).toList();

    // Load categories
    final categoriesJson = await rootBundle.loadString('lib/data/dummy/categories.json');
    final List<dynamic> categoriesList = jsonDecode(categoriesJson);
    _categories = categoriesList.map((e) => Category.fromJson(e)).toList();

    _initialized = true;
  }

  // Products
  static List<Product> getAllProducts() => _products;

  static List<Product> getProductsByVendor(String vendorId) => 
      _products.where((p) => p.vendorId == vendorId).toList();

  static List<Product> getAvailableProducts() => 
      _products.where((p) => p.isAvailable).toList();

  static Product? getProductById(String id) {
    try {
      return _products.firstWhere((p) => p.id == id);
    } catch (_) {
      return null;
    }
  }

  static List<Product> getProductsByCategory(String categoryId) => 
      _products.where((p) => p.categoryId == categoryId).toList();

  static List<Product> searchProducts(String query) {
    final lowercaseQuery = query.toLowerCase();
    return _products.where((p) => 
      p.nama.toLowerCase().contains(lowercaseQuery) ||
      p.deskripsi.toLowerCase().contains(lowercaseQuery)
    ).toList();
  }

  static List<Product> filterProducts({
    String? categoryId,
    int? minHarga,
    int? maxHarga,
    String? kota, // butuh join ke vendor
    double? userLat,
    double? userLng,
    double? radiusKm,
    String? tglMulai,
    String? tglSelesai,
    String sortBy = 'rating', // 'rating' | 'harga_asc' | 'harga_desc' | 'jarak'
  }) {
    var result = _products.where((p) => p.isAvailable);

    if (categoryId != null) {
      result = result.where((p) => p.categoryId == categoryId);
    }
    if (minHarga != null) {
      result = result.where((p) => p.hargaPerHari >= minHarga);
    }
    if (maxHarga != null) {
      result = result.where((p) => p.hargaPerHari <= maxHarga);
    }

    // Note: Filter by kota, radius, date availability butuh join ke vendor & booking
    // Akan dihandle di repository layer yang punya akses ke vendor mock

    var list = result.toList();

    // Sort
    switch (sortBy) {
      case 'rating':
        list.sort((a, b) => b.ratingRata.compareTo(a.ratingRata));
        break;
      case 'harga_asc':
        list.sort((a, b) => a.hargaPerHari.compareTo(b.hargaPerHari));
        break;
      case 'harga_desc':
        list.sort((a, b) => b.hargaPerHari.compareTo(a.hargaPerHari));
        break;
      case 'jarak':
        // Butuh data vendor & user location - handle di repository
        break;
    }

    return list;
  }

  // Categories
  static List<Category> getAllCategories() => _categories;

  static Category? getCategoryById(String id) {
    try {
      return _categories.firstWhere((c) => c.id == id);
    } catch (_) {
      return null;
    }
  }

  // CRUD untuk pengusaha (mock - update in-memory)
  static void addProduct(Product product) {
    _products.add(product);
  }

  static void updateProduct(Product product) {
    final index = _products.indexWhere((p) => p.id == product.id);
    if (index != -1) {
      _products[index] = product;
    }
  }

  static void deleteProduct(String productId) {
    _products.removeWhere((p) => p.id == productId);
  }

  static void updateProductStatus(String productId, String status) {
    final index = _products.indexWhere((p) => p.id == productId);
    if (index != -1) {
      _products[index] = _products[index].copyWith(status: status);
    }
  }

  static void updateProductStok(String productId, int stok) {
    final index = _products.indexWhere((p) => p.id == productId);
    if (index != -1) {
      _products[index] = _products[index].copyWith(stok: stok);
    }
  }
}
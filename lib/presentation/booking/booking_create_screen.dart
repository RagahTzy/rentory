// lib/presentation/booking/booking_create_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';
import '../../core/utils/format_utils.dart';
import '../../data/services/product_service.dart';

class BookingCreateScreen extends StatefulWidget {
  final String productId;
  const BookingCreateScreen({super.key, required this.productId});

  @override
  State<BookingCreateScreen> createState() => _BookingCreateScreenState();
}

class _BookingCreateScreenState extends State<BookingCreateScreen> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _startDate;
  DateTime? _endDate;
  int _qty = 1;
  String _pickupOption = 'ambil_di_toko';
  final bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final product = ProductService.getProductById(widget.productId);
    if (product == null) {
      return Scaffold(appBar: AppBar(title: const Text('Produk Tidak Ditemukan')));
    }

    final days = _startDate != null && _endDate != null ? _endDate!.difference(_startDate!).inDays + 1 : 1;
    final subtotal = product.hargaPerHari * _qty * days;
    final deposit = (subtotal * 30 / 100).round(); // 30% default

    return Scaffold(
      appBar: AppBar(title: const Text('Buat Booking')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Summary
              Card(
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: product.foto.isNotEmpty
                        ? Image.asset(product.foto.first, fit: BoxFit.cover, errorBuilder: (_, _, _) => Icon(AppIcons.package))
                        : Icon(AppIcons.package),
                  ),
                  title: Text(product.nama, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
                  subtitle: Text('${formatCurrency(product.hargaPerHari)}/hari'),
                ),
              ),
              const SizedBox(height: 24),

              // Dates
              Text('Tanggal Sewa', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _DateField(
                      label: 'Mulai',
                      value: _startDate,
                      onTap: () => _pickDate(true),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _DateField(
                      label: 'Selesai',
                      value: _endDate,
                      onTap: () => _pickDate(false),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Quantity
              Text('Jumlah', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              Row(
                children: [
                  IconButton(
                    onPressed: _qty > 1 ? () => setState(() => _qty--) : null,
                    icon: const Icon(AppIcons.minus),
                    style: IconButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest),
                  ),
                  const SizedBox(width: 16),
                  Text('$_qty', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: _qty < product.stok ? () => setState(() => _qty++) : null,
                    icon: const Icon(AppIcons.plus),
                    style: IconButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest),
                  ),
                  const Spacer(),
                  Text('Stok: ${product.stok}', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6))),
                ],
              ),
              const SizedBox(height: 24),

              // Pickup Option
              Text('Opsi Pengambilan', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              SegmentedButton<String>(
                segments: const [
                  ButtonSegment(value: 'ambil_di_toko', label: Text('Ambil di Toko'), icon: Icon(AppIcons.storefront)),
                  ButtonSegment(value: 'diantar', label: Text('Diantar'), icon: Icon(AppIcons.truck)),
                ],
                selected: {_pickupOption},
                onSelectionChanged: (s) => setState(() => _pickupOption = s.first),
              ),
              const SizedBox(height: 24),

              // Price Breakdown
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _PriceRow('Harga sewa', formatCurrency(subtotal)),
                      _PriceRow('Deposit (30%)', formatCurrency(deposit)),
                      const Divider(),
                      _PriceRow('Total Bayar Sekarang (DP)', formatCurrency(deposit), isTotal: true),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              FilledButton(
                onPressed: _isLoading || _startDate == null || _endDate == null ? null : _submitBooking,
                child: _isLoading
                    ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                    : const Text('Ajukan Booking'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickDate(bool isStart) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: isStart ? (_startDate ?? DateTime.now().add(const Duration(days: 1))) : (_endDate ?? _startDate?.add(const Duration(days: 1)) ?? DateTime.now().add(const Duration(days: 2))),
      firstDate: isStart ? DateTime.now() : (_startDate ?? DateTime.now()),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          _startDate = picked;
          if (_endDate != null && _endDate!.isBefore(_startDate!)) {
            _endDate = _startDate!.add(const Duration(days: 1));
          }
        } else {
          _endDate = picked;
        }
      });
    }
  }

  void _submitBooking() {
    // Mock: just go back with success
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Booking diajukan! Menunggu konfirmasi pengusaha.')),
    );
    context.pop();
  }
}

class _DateField extends StatelessWidget {
  final String label;
  final DateTime? value;
  final VoidCallback onTap;

  const _DateField({required this.label, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: const Icon(AppIcons.calendar),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(value != null ? formatDate(value!) : 'Pilih tanggal'),
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _PriceRow(this.label, this.value, {this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: isTotal ? Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600) : Theme.of(context).textTheme.bodyMedium),
          Text(value, style: isTotal ? Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.primary) : Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
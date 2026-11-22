// lib/presentation/auth/vendor_register_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../core/constants/app_constants.dart';
import '../../core/utils/validation_utils.dart';
import '../../data/services/auth_service.dart';
import '../../data/mock/vendor_mock.dart';
import '../../data/models/vendor.dart';

class VendorRegisterScreen extends ConsumerStatefulWidget {
  const VendorRegisterScreen({super.key});

  @override
  ConsumerState<VendorRegisterScreen> createState() => _VendorRegisterScreenState();
}

class _VendorRegisterScreenState extends ConsumerState<VendorRegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  
  // User data
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  
  // Vendor data
  final _storeNameController = TextEditingController();
  final _storeDescController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _latController = TextEditingController();
  final _lngController = TextEditingController();
  final _contactController = TextEditingController();
  final _hoursController = TextEditingController(text: '09:00-21:00');
  
  // Bank account
  final _bankController = TextEditingController();
  final _accountNumberController = TextEditingController();
  final _accountNameController = TextEditingController();
  
  // Policies
  final _lateFeeController = TextEditingController(text: '50000');
  final _depositPercentController = TextEditingController(text: '30');
  final _cancelPolicyController = TextEditingController();
  final _deliveryFeeController = TextEditingController(text: '5000');
  final _deliveryRadiusController = TextEditingController(text: '10');
  
  bool _obscurePassword = true;
  bool _obscureConfirm = true;
  bool _isLoading = false;
  String? _errorMessage;
  bool _offerDelivery = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _storeNameController.dispose();
    _storeDescController.dispose();
    _addressController.dispose();
    _cityController.dispose();
    _latController.dispose();
    _lngController.dispose();
    _contactController.dispose();
    _hoursController.dispose();
    _bankController.dispose();
    _accountNumberController.dispose();
    _accountNameController.dispose();
    _lateFeeController.dispose();
    _depositPercentController.dispose();
    _cancelPolicyController.dispose();
    _deliveryFeeController.dispose();
    _deliveryRadiusController.dispose();
    super.dispose();
  }

  Future<void> _handleRegister() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // 1. Register user
      final user = await AuthService.register(
        email: _emailController.text.trim(),
        password: _passwordController.text,
        nama: _nameController.text.trim(),
        noHp: _phoneController.text.trim(),
        role: AppConstants.rolePengusaha,
      );

      if (user == null) throw Exception('Gagal membuat akun');

      // 2. Create vendor profile (mock)
      final vendor = Vendor(
        id: 'vnd_${DateTime.now().millisecondsSinceEpoch}',
        userId: user.id,
        namaToko: _storeNameController.text.trim(),
        deskripsi: _storeDescController.text.trim(),
        logo: 'assets/logos/default_store.png',
        alamat: _addressController.text.trim(),
        kota: _cityController.text.trim(),
        latitude: double.parse(_latController.text),
        longitude: double.parse(_lngController.text),
        kontak: _contactController.text.trim(),
        jamOperasional: _hoursController.text.trim(),
        statusVerifikasi: 'menunggu',
        rekening: BankAccount(
          bank: _bankController.text.trim(),
          nomorRekening: _accountNumberController.text.trim(),
          atasNama: _accountNameController.text.trim(),
        ),
        tarifDendaPerHari: int.parse(_lateFeeController.text),
        persenDeposit: int.parse(_depositPercentController.text),
        kebijakanBatal: _cancelPolicyController.text.trim(),
        opsiPengambilan: _offerDelivery ? ['ambil_di_toko', 'diantar'] : ['ambil_di_toko'],
        biayaAntarPerKm: int.parse(_deliveryFeeController.text),
        radiusAntarMaxKm: double.parse(_deliveryRadiusController.text),
        ratingRata: 0.0,
        totalReview: 0,
        createdAt: DateTime.now().toIso8601String(),
      );

      mockVendors.add(vendor);
      AuthService.updateUserVendorId(user.id, vendor.id);

      if (mounted) {
        ref.read(authStateProvider.notifier).setUser(user);
        context.go('/vendor/pending');
      }
    } catch (e) {
      setState(() => _errorMessage = e.toString());
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Toko')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Daftar sebagai Pengusaha',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Isi data diri dan toko Anda. Akun akan diverifikasi admin.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                if (_errorMessage != null)
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(_errorMessage!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                  ),

                // === DATA DIRI ===
                _sectionTitle('Data Diri', PhosphorIcons.user),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Nama Lengkap', prefixIcon: Icon(PhosphorIcons.user)),
                  validator: (v) => validateRequired(v, 'Nama'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: 'Email', prefixIcon: Icon(PhosphorIcons.envelope)),
                  validator: validateEmail,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(labelText: 'Nomor HP', prefixIcon: Icon(PhosphorIcons.phone)),
                  validator: validatePhone,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(PhosphorIcons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(_obscurePassword ? PhosphorIcons.eye : PhosphorIcons.eyeSlash),
                      onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                    ),
                  ),
                  validator: (v) => validatePassword(v, minLength: 6),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: _obscureConfirm,
                  decoration: InputDecoration(
                    labelText: 'Konfirmasi Password',
                    prefixIcon: const Icon(PhosphorIcons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureConfirm ? PhosphorIcons.eye : PhosphorIcons.eyeSlash),
                      onPressed: () => setState(() => _obscureConfirm = !_obscureConfirm),
                    ),
                  ),
                  validator: (v) => validateConfirmPassword(v, _passwordController.text),
                ),

                const SizedBox(height: 24),
                _sectionTitle('Data Toko', PhosphorIcons.storefront),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _storeNameController,
                  decoration: const InputDecoration(labelText: 'Nama Toko', prefixIcon: Icon(PhosphorIcons.sign)),
                  validator: (v) => validateRequired(v, 'Nama Toko'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _storeDescController,
                  maxLines: 3,
                  decoration: const InputDecoration(labelText: 'Deskripsi Toko', prefixIcon: Icon(PhosphorIcons.textT)),
                  validator: (v) => validateRequired(v, 'Deskripsi'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(labelText: 'Alamat Lengkap', prefixIcon: Icon(PhosphorIcons.mapPin)),
                  validator: (v) => validateRequired(v, 'Alamat'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _cityController,
                  decoration: const InputDecoration(labelText: 'Kota', prefixIcon: Icon(PhosphorIcons.buildings)),
                  validator: (v) => validateRequired(v, 'Kota'),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _latController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Latitude', prefixIcon: Icon(PhosphorIcons.mapPinLine)),
                        validator: (v) => validateCoordinate(v, isLatitude: true),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        controller: _lngController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Longitude', prefixIcon: Icon(PhosphorIcons.mapPinLine)),
                        validator: (v) => validateCoordinate(v, isLatitude: false),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _contactController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(labelText: 'Kontak Toko (WA/Telepon)', prefixIcon: Icon(PhosphorIcons.phone)),
                  validator: (v) => validateRequired(v, 'Kontak'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _hoursController,
                  decoration: const InputDecoration(labelText: 'Jam Operasional', hintText: '09:00-21:00', prefixIcon: Icon(PhosphorIcons.clock)),
                ),

                const SizedBox(height: 24),
                _sectionTitle('Rekening Usaha (Wajib)', PhosphorIcons.bank),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _bankController,
                  decoration: const InputDecoration(labelText: 'Nama Bank', prefixIcon: Icon(PhosphorIcons.building)),
                  validator: (v) => validateRequired(v, 'Bank'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _accountNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Nomor Rekening', prefixIcon: Icon(PhosphorIcons.hash)),
                  validator: validateBankAccount,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _accountNameController,
                  decoration: const InputDecoration(labelText: 'Atas Nama', prefixIcon: Icon(PhosphorIcons.user)),
                  validator: (v) => validateRequired(v, 'Atas Nama'),
                ),

                const SizedBox(height: 24),
                _sectionTitle('Kebijakan Toko', PhosphorIcons.gear),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _lateFeeController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Tarif Denda per Hari (Rp)', prefixIcon: Icon(PhosphorIcons.currencyCircleDollar)),
                  validator: validatePrice,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _depositPercentController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Persen Deposit (%)', prefixIcon: Icon(PhosphorIcons.percent)),
                  validator: (v) {
                    if (v == null || v.isEmpty) return 'Wajib diisi';
                    final n = int.tryParse(v);
                    if (n == null || n < 0 || n > 100) return '0-100%';
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _cancelPolicyController,
                  maxLines: 2,
                  decoration: const InputDecoration(labelText: 'Kebijakan Pembatalan', prefixIcon: Icon(PhosphorIcons.note)),
                ),

                const SizedBox(height: 24),
                _sectionTitle('Opsi Pengambilan & Antar', PhosphorIcons.truck),
                const SizedBox(height: 12),
                SwitchListTile(
                  title: const Text('Tersedia Jasa Antar'),
                  subtitle: const Text('Penyewa bisa meminta barang diantar'),
                  value: _offerDelivery,
                  onChanged: (v) => setState(() => _offerDelivery = v),
                  secondary: Icon(_offerDelivery ? PhosphorIcons.truck : PhosphorIcons.truck, color: _offerDelivery ? null : Colors.grey),
                ),
                if (_offerDelivery) ...[
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _deliveryFeeController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Biaya Antar per KM (Rp)', prefixIcon: Icon(PhosphorIcons.currencyCircleDollar)),
                    validator: validatePrice,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _deliveryRadiusController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Radius Maksimal Antar (KM)', prefixIcon: Icon(PhosphorIcons.mapPin)),
                    validator: (v) => validatePrice(v),
                  ),
                ],

                const SizedBox(height: 32),
                FilledButton(
                  onPressed: _isLoading ? null : _handleRegister,
                  child: _isLoading
                      ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                      : const Text('Ajukan Pendaftaran Toko'),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => context.go('/auth/login'),
                  child: const Text('Sudah punya akun? Masuk'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
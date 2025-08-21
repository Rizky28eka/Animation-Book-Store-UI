# Animation Book Store UI

Sebuah proyek Flutter yang menampilkan implementasi antarmuka pengguna (UI) untuk aplikasi toko buku dengan fokus pada animasi yang menarik dan pengalaman pengguna yang mulus.

## 📖 Deskripsi Proyek

Proyek ini adalah sebuah prototipe aplikasi mobile yang mensimulasikan etalase sebuah toko buku. Tujuannya adalah untuk menunjukkan bagaimana Flutter dapat digunakan untuk membangun UI yang indah dan interaktif. Aplikasi ini terdiri dari dua halaman utama:

1.  **Halaman Beranda**: Menampilkan koleksi buku dalam sebuah daftar.
2.  **Halaman Detail**: Menampilkan informasi lebih rinci tentang buku yang dipilih, lengkap dengan animasi transisi yang menarik dari halaman beranda.

## ✨ Teknologi yang Digunakan

- **Framework**: Flutter
- **Bahasa**: Dart
- **Ikon**: Cupertino Icons & Ikon Kustom

## ⚙️ Cara Instalasi

1.  Pastikan Anda telah menginstal [Flutter SDK](https://flutter.dev/docs/get-started/install) di komputer Anda.
2.  Clone repositori ini:
    ```bash
    git clone https://github.com/your-username/Animation-Book-Store-UI.git
    ```
3.  Pindah ke direktori proyek:
    ```bash
    cd Animation-Book-Store-UI
    ```
4.  Instal semua dependensi yang dibutuhkan:
    ```bash
    flutter pub get
    ```

## 🚀 Cara Menjalankan

1.  Pastikan Anda memiliki emulator yang sedang berjalan atau perangkat fisik yang terhubung.
2.  Jalankan aplikasi dengan perintah berikut:
    ```bash
    flutter run
    ```

## 📂 Struktur Folder

Berikut adalah gambaran umum struktur folder penting dalam proyek ini:

```
.
├── android/      # Kode spesifik untuk platform Android
├── assets/       # Berisi file aset seperti gambar dan font
│   ├── fonts/
│   └── images/
├── ios/          # Kode spesifik untuk platform iOS
├── lib/          # Direktori utama untuk kode Dart aplikasi
│   ├── main.dart   # Titik masuk utama aplikasi
│   ├── pages/      # Berisi file-file untuk setiap halaman (Beranda, Detail)
│   └── shared/     # Widget, model data, dan utilitas yang digunakan bersama
├── test/         # Berisi file-file untuk pengujian
└── pubspec.yaml  # Mendefinisikan metadata dan dependensi proyek
```

## 🤝 Kontribusi

Kontribusi sangat diterima! Jika Anda memiliki ide untuk perbaikan atau menemukan bug, silakan buka *issue* atau kirimkan *pull request*.
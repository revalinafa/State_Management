# 🧠 State Management Flutter menggunakan GetX

Project ini dibuat sebagai tugas Mata Kuliah **Pemrograman Mobile** dengan menerapkan konsep **State Management** pada Flutter menggunakan **GetX**.  
Aplikasi ini terdiri dari dua halaman, yaitu **Home Page** dan **About Page**, serta memanfaatkan GetX untuk mengelola state berupa data profil mahasiswa (Nama dan NIM).
<img width="870" height="1074" alt="Screenshot 2025-11-03 211810" src="https://github.com/user-attachments/assets/39011882-6d6f-4ff1-8b4f-e9164832b394" />
<img width="872" height="1068" alt="Screenshot 2025-11-03 211005" src="https://github.com/user-attachments/assets/403281d4-5622-4b0f-bb37-fcce3dcd740e" />

---

## 📂 Struktur Folder

```
lib/
 ├─ app/
 │   ├─ controllers/
 │   │   └─ profile_controller.dart
 │   ├─ pages/
 │   │   ├─ home_page.dart
 │   │   └─ about_page.dart
 │   └─ routes/
 │       └─ app_routes.dart
 └─ main.dart
```

---

## 🚀 Teknologi yang Digunakan

| Teknologi | Keterangan |
|-----------|-------------|
| Flutter | Framework UI untuk mobile, web & desktop |
| Dart | Bahasa pemrograman |
| GetX | State Management, Route Management, dan Dependency Injection |

---

## 🧩 Fitur Aplikasi

✅ Menggunakan **GetX State Management**  
✅ Menampilkan **Nama & NIM** dari Controller menggunakan `Obx()`  
✅ Navigasi antar halaman menggunakan `Get.toNamed()` dan `Get.offAllNamed()`  
✅ Tampilan UI modern dengan Card  

---

## 📜 Penjelasan State Management yang Digunakan

Aplikasi ini menggunakan **Simple State Management** GetX melalui sebuah controller bernama `ProfileController` yang menyimpan data:

```dart
final fullName = 'Revalina Fidiya Anugrah'.obs;
final nim = 'H1D023011'.obs;
```

Data tersebut bersifat **reactive** (`.obs`), sehingga UI akan otomatis ter-update ketika nilai berubah.  
State diakses menggunakan:

```dart
Obx(() => Text(profileC.fullName.value))
```

---

## 🧭 Alur Navigasi Aplikasi

| Halaman | Aksi |
|----------|----------------------------|
| Home Page | Menampilkan Nama & NIM, tombol menuju About Page |
| About Page | Menampilkan info aplikasi & tombol kembali ke Home |

Navigasi menggunakan GetX Route Management:

```dart
Get.toNamed(AppRoutes.about);
Get.offAllNamed(AppRoutes.home);
```

---

## ▶️ Cara Menjalankan Aplikasi

1. Pastikan sudah install dependency
   ```bash
   flutter pub get
   ```

2. Jalankan aplikasi
   ```bash
   flutter run
   ```

---

## ✍️ Identitas Pembuat

| Keterangan | Data |
|------------|-------|
| Nama | Revalina Fidiya Anugrah |
| NIM | H1D023011 |
| Matkul | Pemrograman Mobile |
| Topik | State Management GetX |

---

### 📎 Catatan

Project ini hanya berisi implementasi dasar State Management GetX tanpa fitur counter, agar fokus pada pemahaman konsep pengelolaan state dan navigasi menggunakan GetX.

---

Jika ingin menambahkan versi lanjutan seperti **theme mode GetX**, **binding**, atau **API request**, dapat dikembangkan pada versi berikutnya.

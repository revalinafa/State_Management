# 🎀 Flutter State Management with GetX (Pink Theme UI)

Project ini dibuat sebagai tugas Mata Kuliah **Pemrograman Mobile** dengan menerapkan **State Management menggunakan GetX**.  
Aplikasi ini menampilkan 3 halaman utama menggunakan **Bottom Navigation Bar** sebagai navbar (mobile friendly) dan juga tersedia **Drawer Menu**.  
Tema aplikasi menggunakan **Pink UI + Font Poppins** untuk tampilan yang lebih modern dan estetis.
<img width="743" height="1071" alt="Screenshot 2025-11-03 215838" src="https://github.com/user-attachments/assets/e5a863ae-aab0-49e1-83c5-8e18e7215875" />
<img width="734" height="1077" alt="Screenshot 2025-11-03 215848" src="https://github.com/user-attachments/assets/e4d030e5-e4cf-4c87-9ec0-bc1b30b91e4b" />
<img width="737" height="1077" alt="Screenshot 2025-11-03 215855" src="https://github.com/user-attachments/assets/52a80f58-5920-49dc-9605-080f36153125" />
<img width="738" height="1086" alt="Screenshot 2025-11-03 215903" src="https://github.com/user-attachments/assets/c0bd1502-ea03-4e8c-92d7-7d487900439d" />

---

## 📱 Halaman pada Aplikasi

| Halaman | Deskripsi |
|---------|------------|
| Home | Menampilkan Nama & NIM |
| About | Menjelaskan tentang aplikasi |
| Contact | Menampilkan email & kontak pembuat |

Aplikasi menggunakan **GetX** untuk navigasi tanpa indeks dan tanpa reload halaman.

---

## 🚀 Fitur Aplikasi

✅ Menggunakan **GetX State Management**  
✅ **Bottom Navigation Bar** untuk navigasi utama (Mobile UI)  
✅ **Drawer Menu** sebagai menu tambahan  
✅ Font **Poppins** & tema **Pink Aesthetic**  
✅ Clean Code dengan struktur folder rapi (MVC + Routing)  
✅ Navigasi menggunakan `Get.toNamed()` & GetX Controller  

---

## 📂 Struktur Folder

```
lib/
 ├─ app/
 │   ├─ controllers/
 │   │   └─ nav_controller.dart
 │   ├─ pages/
 │   │   ├─ home_page.dart
 │   │   ├─ about_page.dart
 │   │   └─ contact_page.dart
 │   ├─ widgets/
 │   │   ├─ custom_bottom_nav.dart
 │   │   └─ custom_drawer.dart
 │   └─ routes/
 │       └─ app_routes.dart
 └─ main.dart
```

---

## 🧠 Penjelasan State Management yang Digunakan

Aplikasi ini menggunakan **Simple State Management GetX**, di mana `NavController` menyimpan state route halaman yang aktif.  

Contoh penggunaan `.obs`:

```dart
final currentRoute = '/home'.obs;
```

Contoh reactive UI dengan Obx:

```dart
Obx(() => BottomNavigationBar(
  currentIndex: controller.currentIndex.value,
))
```

---

## 🧭 Alur Navigasi

Navigasi dilakukan dengan **named route GetX**:

```dart
navController.navigateTo('/about');
Get.toNamed(AppRoutes.about);
```

Ketika user pindah halaman melalui bottom nav, UI berubah tanpa reload.

---

## 🎨 Tema & UI

- Warna utama: **PinkAccent**
- Font: **Poppins**
- UI dibuat agar friendly untuk mobile dengan bottom navbar

Jika ingin meningkatkan UI, fitur berikut bisa ditambahkan:
✨ Dark Mode Toggle  
✨ Floating Curved Bottom Nav  
✨ Animated Transitions  

---

## ▶️ Cara Menjalankan Aplikasi

1. Install dependency
   ```bash
   flutter pub get
   ```

2. Jalankan aplikasi
   ```bash
   flutter run
   ```

---

## 👩‍💻 Identitas Pembuat

| Keterangan | Data |
|------------|--------|
| Nama | Revalina Fidiya Anugrah |
| NIM | H1D023011 |
| Kelas | Pemrograman Mobile |
| Topik | State Management GetX + Bottom Navigation |

---

Jika kamu ingin versi **README GitHub Premium** (dengan badge, screenshot, preview UI, dan GIF demo), tulis:  
> Buatkan README Premium


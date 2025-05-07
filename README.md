# 🐘 PHP + NGINX + MariaDB Docker Muhiti

Bu loyiha PHP, NGINX va MariaDB (MySQL) asosida Docker konteynerlari yordamida ishlab chiqilgan oddiy test muhiti hisoblanadi. U PDO orqali ma'lumotlar bazasiga ulanishni tekshiradi.

## 📁 Loyihaning Tuzilishi

```
.
├── app/                  # PHP manba fayllari (index.php shu yerda)
├── php/                  # PHP uchun Dockerfile
├── nginx/                # NGINX sozlamalari va Dockerfile
├── mysql/                # MySQL uchun Dockerfile va init.sh
├── docker-compose.yml    # Barcha konteynerlar konfiguratsiyasi
```

## 📦 Talablar

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## 🚀 Ishga tushurish

1. Loyihani klon qiling:

```bash
git clone https://github.com/KojanovDEV/iw4.git
cd iw4
```

2. `app/` papkasini yarating va `index.php` faylni shu yerga joylashtiring:

```bash
mkdir app
cp php/index.php app/index.php
```

3. Konteynerlarni ishga tushuring:

```bash
docker compose up --build
```

4. Brauzeringizda quyidagi manzilga kiring:

```
http://localhost:8080
```

✅ Agar hammasi to‘g‘ri bo‘lsa, quyidagi xabar chiqadi:
> Success: Ma'lumotlar omboriga ulanish to'g'ri amalga oshdi!

Aks holda, PDO orqali ulanishdagi xatolik haqida ma’lumot chiqadi.

## 🧱 Texnologiyalar

- **PHP 8.2** (`php-fpm`) + Composer
- **NGINX** (`default.conf` orqali sozlangan)
- **MariaDB (MySQL)** (`init.sh` orqali foydalanuvchi va baza yaratiladi)
- **Docker Compose** (multi-container muhiti)

## ⚙️ Muhim Konteynerlar

### PHP konteyner (`php`)

- `composer` o‘rnatilgan
- `dibi/dibi` kutubxonasi install qilingan
- `pdo_mysql` kengaytmasi aktiv

### MySQL konteyner (`mysql`)

- `testdb` nomli baza avtomatik yaratiladi
- `testuser:testpass` foydalanuvchisi tayyor
- `init.sh` fayl orqali sozlanadi

### NGINX konteyner (`nginx`)

- 80-port orqali PHP fayllarni ishlaydi
- Brauzerga xizmat ko‘rsatadi

## 🧪 Test uchun

Agar sizda `http://localhost:8080` sahifasida quyidagidek chiqsa, demak, loyihangiz to‘g‘ri ishlamoqda:

```
Success: Ma'lumotlar omboriga ulanish to'g'ri amalga oshdi!
```

## 🧹 Tozalash

Konteynerlarni to‘xtatish va tozalash uchun:

```bash
docker compose down
```

## 📬 Muallif

- Ism: Kuralbek
- Kontakt: [reg95design@gmail.com](mailto:your-email@example.com)

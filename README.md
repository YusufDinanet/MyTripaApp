# MyTripaApp
MyTripsaApp - Core Data ile Seyahat Yönetimi
Genel Bakış
MyTripsaApp, seyahatlerinizi, harcamalarınızı ve lokasyonlarınızı düzenlemenizi sağlayan bir mobil uygulamadır. Uygulama, verilerinizi yerel olarak saklamak için Core Data teknolojisini kullanır ve kullanıcı dostu bir deneyim sunar.

Özellikler
Seyahat Yönetimi: Seyahatlerinizi planlayın ve organize edin.

Seyahat adı, başlangıç ve bitiş tarihlerini ekleme.
Harcama ve lokasyon bilgilerini ilişkilendirme.
Harcama Takibi: Seyahatlerinizle ilişkili harcamaları kaydedin.

Harcama adı, tutarı, kategorisi ve tarihi bilgilerini ekleme.
Seyahat bazlı harcama listeleri görüntüleme.
Lokasyon Yönetimi: Seyahatlerinize ait lokasyon bilgilerini kaydedin.

Lokasyon adı, açıklaması, enlem ve boylam bilgilerini ekleme.
Harita üzerinden lokasyonları görselleştirme imkanı.
Core Data Yapısı
1. TripEntity (Seyahat Varlığı)
Amaç: Seyahat bilgilerini saklamak.
Özellikler:
id: Benzersiz kimlik (UUID).
name: Seyahat adı (String).
startDate: Seyahatin başlangıç tarihi (Date).
endDate: Seyahatin bitiş tarihi (Date).
İlişkiler:
locations: Lokasyon bilgileri (NSSet).
expenses: Harcama bilgileri (NSSet).
Yardımcı Fonksiyonlar:
wrappedName, wrappedStartDate, wrappedEndDate.
locationsArray: Lokasyonları sıralı bir dizi olarak döndürür.
expensesArray: Harcamaları sıralı bir dizi olarak döndürür.
2. ExpensesEntity (Harcama Varlığı)
Amaç: Harcama bilgilerini saklamak.
Özellikler:
id: Benzersiz kimlik (UUID).
name: Harcama adı (String).
amount: Harcama tutarı (Double).
category: Harcama kategorisi (String).
date: Harcama tarihi (Date).
İlişkiler:
trip: İlgili seyahat (TripEntity).
Yardımcı Fonksiyonlar:
unwrappedName, unwrappedAmount, unwrappedCategory, unwrappedDate.
3. LocationEntity (Lokasyon Varlığı)
Amaç: Lokasyon bilgilerini saklamak.
Özellikler:
id: Benzersiz kimlik (UUID).
name: Lokasyon adı (String).
latitude: Enlem bilgisi (Double).
longitude: Boylam bilgisi (Double).
locationDescription: Lokasyon açıklaması (String).
İlişkiler:
trip: İlgili seyahat (TripEntity).
Yardımcı Fonksiyonlar:
unwrappedName, unwrappedDate, unwrappedlatitude, unwrappedlongitude, unwrappedlocationDescription.
Kod Yapısı
TripEntity: Seyahatle ilgili verilerin yönetimi.
ExpensesEntity: Harcamalarla ilgili verilerin yönetimi.
LocationEntity: Lokasyonlarla ilgili verilerin yönetimi.
Dosyalar aşağıdaki gibi organize edilmiştir:

TripEntity+CoreDataClass.swift
TripEntity+CoreDataProperties.swift
ExpensesEntity+CoreDataClass.swift
ExpensesEntity+CoreDataProperties.swift
LocationEntity+CoreDataClass.swift
LocationEntity+CoreDataProperties.swift

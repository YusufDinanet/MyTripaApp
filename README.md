# Yeni Başlangıç
MyTripsaApp Sensor Location
MyTripsaApp, kullanıcıların bir harita üzerinden konum seçerek isim, açıklama ve tarih bilgilerini kaydetmelerini sağlayan bir SwiftUI uygulamasıdır. Bu rehber, AddLocationView bileşenini detaylı bir şekilde açıklamaktadır.

Özellikler
Etkileşimli Harita: Kullanıcılar harita üzerinde gezinip konum seçebilir.
Konum Detayları: Konum adı, açıklama ve tarih bilgisi eklenebilir.
CoreData Entegrasyonu: Seçilen konumlar kalıcı olarak CoreData'ya kaydedilir.
Gereksinimler
Projeyi çalıştırmadan önce şu gereksinimleri kontrol edin:

Xcode 14 veya üzeri.
Swift 5.7 veya üzeri.
Projeye uygun şekilde CoreData yapılandırması yapılmış olmalı.
AddLocationView Bileşeni
AddLocationView, konum ekleme işlemleri için temel bileşendir ve şu bölümlerden oluşur:

1. Metin Giriş Alanları
Kullanıcılar şu bilgileri sağlayabilir:

Konum Adı: Eklenen konumun adı.
Açıklama: Konuma dair notlar.
2. Tarih Seçici
WheelDatePicker ile konumun tarih bilgisi seçilebilir.

3. Etkileşimli Harita
Varsayılan olarak San Francisco üzerine ayarlanmış bir harita görüntülenir.
Kullanıcı, harita üzerinde gezinerek veya tıklayarak yeni bir konum seçebilir. Seçilen konumun koordinatları ekranda görüntülenir.
4. Kaydet Butonu
Butona tıklandığında:

Seçilen konum ve diğer bilgiler doğrulanır.
Bilgiler CoreData'ya kaydedilir.
CoreData Şeması
Projede, CoreData şemasının aşağıdaki gibi yapılandırıldığından emin olun:

Entity: LocationEntity
Özellik	Tür	Açıklama
name	String	Konumun adı.
descriptionText	String	Konuma dair açıklama.
latitude	Double	Konumun enlem bilgisi.
longitude	Double	Konumun boylam bilgisi.
date	Date	Konuma dair tarih bilgisi.
Kodda Öne Çıkanlar
1. Harita Entegrasyonu
Harita, varsayılan olarak San Francisco üzerinde etkileşimli bir şekilde başlatılır:
swift
Kodu kopyala
@State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
    span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
)
Haritaya tıklandığında seçilen konum güncellenir:
swift
Kodu kopyala
.onTapGesture {
    let tappedLocation = region.center
    region.center = tappedLocation
    selectedLocation = tappedLocation
}
2. CoreData Kaydetme
saveLocation() fonksiyonu yeni bir LocationEntity oluşturur ve kaydeder:
swift
Kodu kopyala
let newLocation = LocationEntity(context: viewContext)
newLocation.name = name
newLocation.descriptionText = description
newLocation.latitude = selectedLocation.latitude
newLocation.longitude = selectedLocation.longitude
newLocation.date = selectedDate

do {
    try viewContext.save()
    print("Konum başarıyla kaydedildi.")
} catch {
    print("Konum kaydedilemedi: \(error.localizedDescription)")
}

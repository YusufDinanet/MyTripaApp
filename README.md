# MyTripaApp
MyTripaApp - Bildirim Yönetimi Modülü
Bu modül, MyTripaApp uygulaması için seyahat bildirimlerini yönetmek amacıyla tasarlanmıştır. Kullanıcıların seyahat başlangıç ve bitiş tarihleri için hatırlatmalar almasını sağlar.

Özellikler
Bildirim Planlama: Seyahat başlangıç ve bitiş tarihleri için özel bildirimler ayarlar.
İzin Yönetimi: Uygulama başlatıldığında bildirim izinleri kullanıcıdan otomatik olarak istenir.
Esnek Kullanım: Her bir seyahat için benzersiz bildirim kimlikleri ile çalışır.
Kişiselleştirilmiş İçerik: Bildirim başlıkları ve içerikleri seyahat adı ile özelleştirilir.
Kullanılan Teknolojiler
Dil: Swift
Frameworkler:
SwiftUI: Kullanıcı arayüzü tasarımı için.
CoreData: Veri yönetimi için (ileride kullanılabilir).
UserNotifications: Bildirim planlama ve yönetimi.
Kod Açıklamaları
NotificationManager Sınıfı
Bu sınıf, bildirimleri yönetmek için ObservableObject protokolünü kullanır. Uygulamanın herhangi bir yerinde kolayca erişim sağlamak için bir singleton örneği mevcuttur.

Metotlar:
requestAuthorization()
Kullanıcıdan bildirim izinlerini istemek için çağrılır. Başarısızlık durumunda hata mesajı konsola yazdırılır.

scheduleTripNotifications(tripId: UUID, tripName: String, startDate: Date, endDate: Date)
Belirli bir seyahatin başlangıç ve bitiş tarihleri için bildirim planlar.

Girdi Parametreleri:
tripId: Seyahat için benzersiz bir kimlik.
tripName: Seyahatin adı.
startDate: Seyahatin başlangıç tarihi.
endDate: Seyahatin bitiş tarihi.
İşlevsellik:
Başlangıç bildirimi ve bitiş bildirimi için ayrı tetikleyiciler oluşturur.
Bildirimler planlanır ve UNNotificationRequest aracılığıyla sisteme eklenir.
(Yorumlanmış) showCustomAlert(title: String, message: String)
Uygulama aktifken bildirim yerine özel bir alert göstermek için tasarlanmıştır. Şu anda kullanılmamaktadır.

Kullanım
NotificationManager Singleton'ını Kullanma
Modülün herhangi bir yerinde bildirim planlamak için:

swift
Kodu kopyala
let manager = NotificationManager.shared
manager.scheduleTripNotifications(
    tripId: UUID(),
    tripName: "Örnek Seyahat",
    startDate: Date(),
    endDate: Date().addingTimeInterval(86400)
)
Bildirim İzinlerini Doğrulama
Kullanıcıdan izin alınmamışsa, izin istemek için requestAuthorization() metodunu çağırabilirsiniz:

swift
Kodu kopyala
NotificationManager.shared.requestAuthorization()

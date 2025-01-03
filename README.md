# MyTripaApp
MyTripsaApp - Bildirim Yönetimi

Genel Bakış

MyTripsaApp, bildirim yönetimi için UNUserNotificationCenter framework'ünü kullanır. Bu sayede kullanıcılar, seyahatlerine ilişkin hatırlatıcılar veya güncellemeler gibi bildirimleri zamanında alır.

NotificationManager

NotificationManager sınıfı, uygulamadaki bildirimleri yönetmek için merkezi bir bileşendir. Singleton tasarım desenine uygun olarak oluşturulmuş bu sınıf, uygulamanın herhangi bir yerinden erişilebilen ortak bir örnek sağlar.

Temel Özellikler:

Yetki Yönetimi

Uyarılar, rozetler ve sesler için kullanıcı izinlerini talep eder.

İzin isteklerini ve hataları yönetmek için UNUserNotificationCenter kullanır.

Bildirim Planlama

Belirli zamanlar veya olaylar için bildirimleri planlar.

Uygulama arka plandayken bile bildirimlerin gösterilmesini sağlar.

Merkezi Erişim

Bildirimle ilgili görevleri yönetmek için tek bir giriş noktası sunar.

Başlatma:

NotificationManager, oluşturulduğunda kullanıcı yetkilendirme isteğini hemen gerçekleştirir.

static let shared = NotificationManager()

private init() {
    requestAuthorization()
}

Yetkilendirme İsteği:

requestAuthorization metodu, uygulamanın bildirim gönderebilmek için gerekli izinlere sahip olmasını sağlar.

func requestAuthorization() {
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
        if let error = error {
            print("Authorization error: \(error.localizedDescription)")
        }
    }
}

Bildirim Planlama:

Mevcut implementasyon daha çok yetkilendirme üzerine odaklansa da, NotificationManager uygulama gereksinimlerine göre özelleştirilmiş bildirimler planlamak için genişletilebilir.

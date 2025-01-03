# MyTripaApp
MyTripsaApp Storage Basic Data
Bu proje, kullanıcıların seyahatlerini yönetebileceği, tarih aralıklarını belirleyebileceği ve seyahatlerine özel görseller ekleyebileceği bir SwiftUI uygulamasıdır. Aşağıda, projenin açıklaması ve kullanım talimatları yer almaktadır.

Özellikler
Yeni Seyahat Ekleme:

Kullanıcılar seyahat adı, başlangıç ve bitiş tarihlerini belirterek yeni bir seyahat ekleyebilir.
Seyahate özel görsel ekleme imkanı bulunmaktadır.
Bildirimler:

Seyahat başlangıç tarihinden bir gün önce kullanıcıya hatırlatma bildirimi gönderilir.
Uygulama bildirim izinlerini kullanıcıdan talep eder.
Arka Plan Görevleri:

Uygulama, seyahat bildirimlerini düzenli olarak kontrol eden arka plan görevlerini planlar.
Tema Seçimi:

Kullanıcılar "Açık", "Koyu" ve "Sistem Varsayılanı" temalarından birini seçebilir.
Görsel Yönetimi:

Kullanıcılar cihazlarından görsel seçip, bu görselleri cihazda kaydedebilir.
Kurulum ve Kullanım
Proje Kurulumu:

Projeyi Xcode kullanarak açın.
Uygulama için gerekli bağımlılıkları kontrol edin.
CoreData Yapılandırması:

TripEntity adlı bir Core Data varlığı, seyahat verilerini depolamak için kullanılmıştır.
Varlık, id, name, startDate, endDate, ve image alanlarını içerir.
Bildirimler:

Uygulama çalıştırıldığında, bildirim izinleri talep edilir.
Bildirimlerin düzgün çalışabilmesi için cihazınızda bildirim ayarlarını kontrol edin.
Arka Plan Görevleri:

Arka plan görevleri, iOS’in BGAppRefreshTask API’si kullanılarak planlanmıştır.
Görevlerin çalışabilmesi için arka plan çalışma iznini etkinleştirin.
Görsel Seçimi:

"Görsel Seç" düğmesine tıklayarak cihazınızdaki fotoğrafları seçebilirsiniz.
Seçilen görseller cihazın belgeler dizininde .png formatında kaydedilir.
Tema Seçimi:

Tema seçimi, uygulamanın kullanıcı arayüzünü kişiselleştirmek için kullanılabilir.
"Tema Seçimi" ekranından tercih edilen tema seçilebilir.
Teknik Detaylar
Dil ve Çerçeve:

Swift ve SwiftUI kullanılmıştır.
Bağımlılıklar:

CoreData: Seyahat verilerini depolamak için.
UserNotifications: Bildirimler için.
BackgroundTasks: Arka plan görevlerini yönetmek için.
Kod Organizasyonu:

AddTripView: Yeni seyahat ekleme ekranını sağlar.
ThemePickerView: Tema seçimi ekranını sağlar.

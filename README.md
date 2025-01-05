# MyTripsaApp

## Proje Hakkında
MyTripsaApp, kullanıcıların seyahatlerini planlamasını, seyahat detaylarını yönetmesini ve turistik yerleri keşfetmesini sağlayan, kullanıcı dostu bir mobil uygulamadır. Firebase, Core Data ve SwiftUI teknolojileri ile geliştirilmiş olan bu uygulama, aynı zamanda Google hesabı ile kolay giriş yapma özelliği de sunar. Seyahat planlamalarını dijitalleştirerek kullanıcıların işlerini kolaylaştırmayı hedefler.

## Kullanılan Teknolojiler ve Kütüphaneler
- **SwiftUI**: Kullanıcı arayüzünü modern ve etkili bir şekilde tasarlamak için kullanılmıştır.
- **Core Data**: Kullanıcıların verilerini cihazlarında saklamak için güçlü ve yerel bir veri depolama çözümü sunar.
- **Firebase**: Kimlik doğrulama, veritabanı yönetimi ve gerçek zamanlı veri senkronizasyonu sağlar.
- **Google Sign-In**: Kullanıcıların Google hesapları ile hızlı ve güvenli bir şekilde giriş yapmasını sağlar.
- **MapKit**: Harita görünümü ve kullanıcı konum bilgilerini uygulamada entegre eder.
- **Geoapify API**: Turistik yerlerin bilgilerini elde etmek için kullanılmıştır ve geniş bir veritabanı desteği sağlar.

## Kullanılan Podlar ve Amaçları
Projede **CocoaPods** kullanılarak aşağıdaki bağımlılıklar entegre edilmiştir:

- **Firebase/Auth**: Firebase üzerinden kullanıcı kimlik doğrulaması sağlar.
- **Firebase/Core**: Firebase'in temel işlevlerini ve yapılandırmasını içerir.
- **FirebaseAnalytics**: Kullanıcı davranışlarını takip ederek analiz edilmesine olanak tanır.
- **FirebaseFirestore**: Gerçek zamanlı veritabanı yönetimi sağlar.
- **GoogleSignIn**: Google hesaplarıyla kolay giriş yapma özelliği sunar.
- **GoogleUtilities**: Firebase ve diğer Google hizmetleri için yardımcı işlevler sağlar.

**Podfile.lock** dosyasında bu bağımlılıkların doğru sürümlerini ve alt bağımlılıklarını içeren bir liste yer almaktadır. Bu yapı, projede kullanılacak kütüphanelerin uyumluluğunu ve stabilitesini garanti eder.

### CocoaPods Kullanımı
Projeye dahil edilen kütüphaneler, aşağıdaki adımlar izlenerek yüklenmiştir:
1. **Podfile Oluşturma:** Projenin kök dizininde `Podfile` dosyası oluşturulmuştur.
2. **Bağımlılıkların Eklenmesi:** `Podfile` içerisine gerekli bağımlılıklar eklenmiştir.
3. **Pod Yükleme:** Aşağıdaki komut kullanılarak bağımlılıklar yüklenmiştir:
   ```bash
   pod install
   ```
4. **Workspace Kullanımı:** Yükleme tamamlandıktan sonra projeyi `YourProjectName.xcworkspace` dosyası ile açarak çalışma başlatılmıştır.

## Ana Özellikler
### 1. Giriş Ekranı
Kullanıcılar Google hesapları ile uygulamaya kolayca giriş yapabilir. Giriş işlemi başarılı bir şekilde tamamlandıktan sonra, "TabbarView" ekranına yönlendirilir ve uygulamanın ana işlevlerini kullanmaya başlayabilirler.

### 2. Seyahat Yönetimi
- Kullanıcılar geçmiş ve planlanan seyahatlerini listeleyebilir, yeni seyahatler ekleyebilir ve mevcut seyahatlerin detaylarını görebilir.
- **AddTripView**: Yeni bir seyahat oluşturma ve seyahat adını, başlangıç ve bitiş tarihlerini belirleme ekranıdır.
- **TripDetailsView**: Kullanıcıların seçtikleri seyahatlerin tüm detaylarını inceleyebileceği bir görünüm sunar. Bu ekran üzerinden seyahatle ilgili yeni bilgiler eklenebilir veya düzenlenebilir.

### 3. Konum Yönetimi
- Kullanıcılar seyahatlerine yeni konumlar ekleyebilir, bu konumların açıklamalarını ve tarihlerini belirtebilir.
- **AddLocationView**: Seyahatlere yeni konum eklenmesini sağlayan, harita ve detay giriş bölümlerini içeren bir ekran.
- Konumlar, yerel veri depolama çözümü olan Core Data ile cihazda saklanır ve gerektiğinde erişilebilir.

### 4. Harita ve Turistik Yerler
- **AttractionPointsView**: Kullanıcıların turistik yerleri keşfetmesini sağlayan bir harita ekranı. Harita üzerinde gösterilen yerlerin detayları incelenebilir ve Apple Haritalar üzerinden yol tarifi alınabilir.
- **LocationManager**: Kullanıcının mevcut konumunu tespit ederek daha iyi bir harita deneyimi sunar.

### 5. Firebase Veritabanı İşlemleri
- Uygulama, turistik yerlerin bilgilerini Firebase Firestore veritabanında saklar ve gerektiğinde bu verileri alır.
- **Database.swift**: Firebase ile iletişimi sağlayarak turistik yerlerin eklenmesi ve alınması gibi işlemleri gerçekleştirir.

### 6. Uygulama Mimarisi
- **AppDelegate**: Firebase yapılandırmasını yönetir ve uygulama başlangıcında gerekli ayarları yapar.
- **MyTripsaAppApp**: Uygulamanın başlangıç noktasıdır ve kullanıcı arayüzünü başlatır.

## Kurulum
1. Projeyi klonlayın:
   ```bash
   git clone <repository-url>
   ```
2. Projeyi Xcode ile açın.
3. Firebase yapılandırmasını tamamlamak için `GoogleService-Info.plist` dosyasını projeye ekleyin.
4. Geoapify API anahtarını `PropertyList.plist` dosyasına ekleyerek API entegrasyonunu tamamlayın.

## Kullanım
1. Uygulamayı çalıştırın ve giriş ekranından Google hesabınızla giriş yapın.
2. Seyahatlerinizi oluşturun, detaylarını yönetin ve geçmiş seyahatlerinizi gözden geçirin.
3. Harita ekranını kullanarak turistik yerleri keşfedin.
4. Konum ekleme özelliği ile seyahatlerinize yeni duraklar ekleyin.

## Dosya Yapısı
- **AppDelegate.swift**: Firebase entegrasyonu ve uygulama yapılandırması.
- **ContentView.swift**: Ana görünüm bileşenlerini içerir.
- **Persistence.swift**: Core Data işlemleri ve veritabanı yönetimi.
- **API_URL.swift**: Geoapify API için URL oluşturma işlemlerini yönetir.
- **ApiCall.swift**: API üzerinden veri çekmek için kullanılan çağrı fonksiyonlarını içerir.
- **Features.swift**: API'den alınan verilerin modellerini tanımlar.
- **TripDetailsView.swift**: Seyahat detaylarını görüntüleme ve düzenleme ekranı.
- **TabbarView.swift**: Sekmeli gezinme yapısını oluşturur.
- **LoginView.swift**: Kullanıcı giriş ekranı.
- **AddTripView.swift**: Yeni seyahat ekleme işlemlerini gerçekleştiren ekran.
- **AddLocationView.swift**: Kullanıcıların konum ekleyebileceği ekran.
- **AttractionPointsView.swift**: Turistik yerlerin harita üzerinde görüntülendiği ekran.
- **LocationManager.swift**: Kullanıcının mevcut konum bilgilerini yöneten sınıf.
- **DatabaseFeaturesModel.swift**: Firebase'den alınan turistik yer verilerinin modeli.
- **Database.swift**: Firebase işlemlerini ve veritabanı yönetimini sağlar.

## Ek Özellikler
- **Konum Temelli Deneyim**: Kullanıcıların mevcut konumlarına dayalı olarak daha iyi bir harita ve turistik yer öneri deneyimi sunar.
- **Çoklu Platform Uyumluluğu**: Hem iOS cihazlar hem de geniş ekranlar için optimize edilmiş bir arayüz.
- **Gelişmiş API Kullanımı**: Geoapify API ile turistik yerlerin detaylı bilgilerinin entegrasyonu.


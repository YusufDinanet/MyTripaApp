# MyTripaApp
MyTripaApp - Ortam ve Servis Yönetimi Modülü
Bu modül, MyTripaApp uygulaması için API anahtarlarını yönetme ve uygulama özelliklerini bir API'den dinamik olarak çekme işlevselliği sağlar. Aşağıdaki iki temel bileşenden oluşur:

Ortam Değişkenleri Yönetimi: API anahtarlarının güvenli bir şekilde yönetilmesini sağlar.
Servis Yönetimi: Uygulama özelliklerini API üzerinden dinamik olarak çekmek için bir servis sunar.
Özellikler
Ortam Değişkenleri Yönetimi
Güvenli Erişim: API anahtarlarını plist dosyasından yükler.
Modüler Yapı: Farklı ortamlar (örneğin, prodüksiyon, geliştirme) için genişletilebilir bir yapı sağlar.
Protokollerle Güçlendirme: API anahtarlarının uyumlu bir şekilde kullanılmasını sağlar.
Servis Yönetimi
Veri Çekme: Belirtilen API URL'sinden özellik koleksiyonlarını çeker.
JSON İşleme: Gelen JSON yanıtlarını otomatik olarak ayrıştırır.
Hata Yönetimi: Veri çekme sırasında oluşan hataları ele alır ve geliştiriciye bilgi verir.
Kullanılan Teknolojiler
Dil: Swift
Frameworkler:
Foundation: Temel veri işleme ve ağ işlemleri.
UIKit: Kullanıcı arayüzü entegrasyonu için (servis sınıfı gerekirse kullanılabilir).
Dosya Açıklamaları
Ortam Yönetimi: BaseENV ve ProdENV
BaseENV Sınıfı
Ortam değişkenlerini yönetmek için temel bir sınıf sağlar.
plist dosyalarından anahtar-değer çiftlerini okur.
Başlatılırken bir resourceName alır ve belirtilen dosyayı yükler.
ProdENV Sınıfı
BaseENV sınıfından türetilmiştir.
APIKeyable protokolünü uygular.
Features_APIKEY anahtarını yükleyerek servis çağrılarında kullanılmak üzere sağlar.
Örnek Kullanım:
swift
Kodu kopyala
let env = ProdENV()
print("Feature API Anahtarı: \(env.Feature_API)")
Servis Yönetimi: MyTripsaAppService ve MyTripsaAppServiceProtocol
MyTripsaAppServiceProtocol
Servis sınıfı için standart bir arayüz sağlar.
fetchFeatures(url:completion:): API'den özellik koleksiyonu çeker.
MyTripsaAppService
MyTripsaAppServiceProtocol protokolünü uygular.
URLSession kullanarak API çağrıları gerçekleştirir.
Yanıtları JSON formatında ayrıştırarak döner.
Örnek Kullanım:
swift
Kodu kopyala
let service = MyTripsaAppService()
let apiURL = "https://api.mytripsa.com/features"

service.fetchFeatures(url: apiURL) { features in
    print("Çekilen Özellikler: \(features)")
}

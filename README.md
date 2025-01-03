# Yeni Başlangıç
MyTripsaApp-Authorization

Bu proje, SwiftUI kullanarak bir mobil uygulama geliştirmeyi ve Google Sign-In entegrasyonu ile Firebase kimlik doğrulaması sağlamayı hedeflemektedir. Kullanıcılar Google hesapları ile uygulamaya giriş yapabilir ve başarılı giriş sonrası ana sayfaya (HomePageView) yönlendirilirler.

Proje Yapısı

Teknolojiler

SwiftUI: Kullanıcı arayüzü geliştirme.

Firebase: Kimlik doğrulama ve proje yapılandırma.

Google Sign-In: Google hesapları ile kolay giriş.

Ana Dosyalar

LoginView.swift: Google Sign-In için temel işlevselliği ve giriş ekranını barındırır.

GoogleService-Info.plist: Firebase ve Google Sign-In için gerekli API bilgilerini içerir.

Öne Çıkan Özellikler

Google Sign-In ile Giriş: Kullanıcılar, Google hesapları ile kolayca oturum açabilir.

Navigasyon: Başarılı bir oturum açıldıktan sonra ana sayfaya geçiş sağlanır.

Dinamik Durum Güncellemeleri: Kullanıcının oturum durumu anında ekrana yansıtılır.

Proje Kurulumu

Gereksinimler

Xcode 14+

Swift 5.5+

Firebase Console hesabı

Google Developer Console hesabı

Firebase Yapılandırması

Firebase Console'da yeni bir proje oluşturun.

iOS uygulaması ekleyin ve "GoogleService-Info.plist" dosyasını indirin.

Projeye indirdiğiniz dosyayı ekleyin (Xcode -> Proje adı -> Dosyayı sürükle ve bırak).

Authentication bölümünden Sign-in Method sekmesine gidin ve "Google" kimlik doğrulamayı etkinleştirin.

Google Sign-In Yapılandırması

Google Developer Console'a gidin.

Projenizi bulun veya yeni bir proje oluşturun.

OAuth 2.0 istemci kimliği oluşturun.

iOS URL Scheme alanında, Firebase'deki "REVERSED_CLIENT_ID" değerini kullanın.

Xcode Kurulumu

Dependencies ekleyin:

import GoogleSignIn
import Firebase

Proje adından Signing & Capabilities sekmesine gidin ve GoogleService-Info.plist dosyasını doğrulayın.

Kod Parçaları

Google Sign-In Fonksiyonu

func signInWithGoogle() {
    guard let clientID = FirebaseApp.app()?.options.clientID else { return }
    
    let config = GIDConfiguration(clientID: clientID)
    GIDSignIn.sharedInstance.configuration = config
    
    GIDSignIn.sharedInstance.signIn(withPresenting: getRootViewController()) { [self] result, error in
        guard error == nil else {
            print("Error signing in: \(error?.localizedDescription)")
            return
        }
        
        guard let user = result?.user, let idToken = user.idToken?.tokenString else {
            print("Error signing in: \(error?.localizedDescription)")
            return
        }
        
        let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: user.accessToken.tokenString)
        isSignedIn = true
    }
}

Root View Controller Alma

func getRootViewController() -> UIViewController {
    guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
          let rootViewController = windowScene.windows.first?.rootViewController else {
        fatalError("Could not get root view controller")
    }
    return rootViewController
}

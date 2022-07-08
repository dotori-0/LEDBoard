//
//  AppDelegate.swift
//  Horizontal
//
//  Created by SC on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // 기절시키기
//        sleep(1)  // 조금 위험할 수 있는 요소다. sleep이전에 기능이 있으면 시간만 늘어남
        return true
    }
// MARK: - iOS 12
    func applicationDidEnterBackground(_ application: UIApplication) {
        // YouTube - 사용자 프리미엄 결제했으면 play, 아니면 일시정지
        // 금융/은행 앱 - 안 보이게 화면 덮기
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // YouTube - 결제 안 한 사람에게 팝업창 띄워!
        // KakaoTalk - 잠금화면 띄우기
        // 금융/은행 앱 - 보이게 하기
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


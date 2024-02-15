//
//  AppDelegate.swift
//  SwiftUITuts
//
//  Created by Varshney on 06/11/23.
//

import SwiftUI
import UserNotifications


class AppDelegate: NSObject,UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            if error != nil {
                print(error?.localizedDescription ?? "NO_ERROR")
            } else {
                print("NO_ERROR =")
            }
        }
        application.registerForRemoteNotifications()
        return true
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        print("didReceiveRemoteNotification === ",userInfo)
        completionHandler(UIBackgroundFetchResult.newData)
    }
}

extension AppDelegate : UNUserNotificationCenterDelegate {

  // Receive displayed notifications for iOS 10 devices.
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                              willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        let userInfo = notification.request.content.userInfo
        print("userNotificationCenter = ",userInfo)
    // Change this to your preferred presentation option
        completionHandler([[.banner, .badge, .sound]])
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print("didRegisterForRemoteNotificationsWithDeviceToken = ",deviceToken)
    }

    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("didFailToRegisterForRemoteNotificationsWithError = ",error)
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter,
                              didReceive response: UNNotificationResponse,
                              withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo
        print("userNotificationCenter == ",userInfo)
        completionHandler()
    }
}

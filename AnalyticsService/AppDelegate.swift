//
//  AppDelegate.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 08.04.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let googleAnalyticsService: GoogleAnalyticsService = GoogleAnalyticsService()
        let localUserAnalyticsService: LocalUserAnalyticsService = LocalUserAnalyticsService()
        let logAnalyticsService: LogAnalyticsService = LogAnalyticsService()
        let lifeCycleLogAnalyticsService: LifeCycleLogAnalyticsService = LifeCycleLogAnalyticsService()

        AnalyticsManager.instance.add(service: googleAnalyticsService)
        AnalyticsManager.instance.add(service: localUserAnalyticsService)
        AnalyticsManager.instance.add(service: logAnalyticsService)
        AnalyticsManager.instance.add(service: lifeCycleLogAnalyticsService)
        AnalyticsManager.instance.initialize(application: application, launchOptions: launchOptions)
       
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


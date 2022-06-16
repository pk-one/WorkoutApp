//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Pavel Olegovich on 16.06.2022.
//

import Foundation
import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = R.Colors.active
        tabBar.barTintColor = R.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = R.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        let overviewNavigationController = UINavigationController(rootViewController: overviewController)
        let sessionNavigationController = UINavigationController(rootViewController: sessionController)
        let progressNavigationController = UINavigationController(rootViewController: progressController)
        let settingsNavigationController = UINavigationController(rootViewController: settingsController)
        
        overviewNavigationController.tabBarItem = UITabBarItem(title: R.Strings.TabBar.overview,
                                                     image: R.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        
        sessionNavigationController.tabBarItem = UITabBarItem(title: R.Strings.TabBar.session,
                                                     image: R.Images.TabBar.session,
                                                     tag: Tabs.session.rawValue)
        
        progressNavigationController.tabBarItem = UITabBarItem(title: R.Strings.TabBar.progress,
                                                     image: R.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        
        settingsNavigationController.tabBarItem = UITabBarItem(title: R.Strings.TabBar.settings,
                                                     image: R.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        setViewControllers([
            overviewNavigationController,
            sessionNavigationController,
            progressNavigationController,
            settingsNavigationController
        ], animated: false)
    }
}

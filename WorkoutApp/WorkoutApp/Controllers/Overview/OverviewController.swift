//
//  ViewController.swift
//  WorkoutApp
//
//  Created by Pavel Olegovich on 16.06.2022.
//

import UIKit

class OverviewController: BaseController {
    
    private let navigationBar = OverviewNavigationBar()
    
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        view.addView(navigationBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: view.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        navigationController?.navigationBar.isHidden = true
    }
}



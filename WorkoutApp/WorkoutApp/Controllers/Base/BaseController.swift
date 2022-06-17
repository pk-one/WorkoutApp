//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Pavel Olegovich on 16.06.2022.
//

import Foundation
import UIKit

enum NavigationBarPosition {
    case left
    case right
}
class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
}

@objc extension BaseController {
    
    func setupViews() {}
    
    func constraintViews() {}
    
    func configureAppearance() {
        view.backgroundColor = R.Colors.background
    }
    
    func navBarLeftButtonDidTapped() {
        print("navBarLeftButtonDidTapped")
    }
    
    func navBarRightButtonDidTapped() {
        print("navBarRightButtonDidTapped")
    }
}

extension BaseController {
    func addNavigationBarButton(at position: NavigationBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonDidTapped), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonDidTapped), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}

//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Pavel Olegovich on 16.06.2022.
//

import UIKit

class SessionController: BaseController {
    private let timerView: WABaseInfoView = {
        let view = WABaseInfoView(with: "Test", buttonTitle: "Test button")
        return view
    }()
}

extension SessionController {
    override func setupViews() {
        super.setupViews()
        
        view.addView(timerView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)

        addNavigationBarButton(at: .left, with: R.Strings.Session.navBarLeft)
        addNavigationBarButton(at: .right, with: R.Strings.Session.navBarRight)
    }
}

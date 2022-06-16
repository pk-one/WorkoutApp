//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Pavel Olegovich on 16.06.2022.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.session

        addNavigationBarButton(at: .left, with: R.Strings.Session.navBarLeft)
        addNavigationBarButton(at: .right, with: R.Strings.Session.navBarRight)
    }
}


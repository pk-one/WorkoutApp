//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Pavel Olegovich on 16.06.2022.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.progress

        addNavigationBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavigationBarButton(at: .right, with: R.Strings.Progress.navBarRight)
    }
}



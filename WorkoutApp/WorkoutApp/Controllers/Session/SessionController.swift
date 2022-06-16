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

        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = R.Strings.TabBar.session

        addNavigationBarButton(at: .left, with: "Pause")
        addNavigationBarButton(at: .right, with: "Finish")

    }
}


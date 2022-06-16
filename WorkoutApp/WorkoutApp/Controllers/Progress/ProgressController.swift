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

        title = "Workout Progress"
        navigationController?.tabBarItem.title = R.Strings.TabBar.progress
        
        addNavigationBarButton(at: .left, with: "Export")
        addNavigationBarButton(at: .right, with: "Details")
    }
}



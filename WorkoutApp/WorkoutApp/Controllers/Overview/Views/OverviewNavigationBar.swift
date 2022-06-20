//
//  OverviewNavigationBar.swift
//  WorkoutApp
//
//  Created by Pavel Olegovich on 16.06.2022.
//

import UIKit

final class OverviewNavigationBar: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = R.Strings.NavBar.overview
        label.textColor = R.Colors.titleDarkGray
        label.font = R.Fonts.helveticaRegular(with: 22)
        return label
    }()
    
    private let allWorkoutButton = WAButton(with: .secondary, and: R.Strings.Overview.allWorkoutsButton)
    
    private let addButton: UIButton = {
        let button = UIButton()
        button.setImage(R.Images.Common.add, for: .normal)
        return button
    }()
    
    private let weekView = WeekView()
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addWorkoutsAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavigationBar {
    override func setupViews() {
        super.setupViews()
        addView(titleLabel)
        addView(allWorkoutButton)
        addView(addButton)
        addView(weekView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: R.Colors.separator, height: 1)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutButton.heightAnchor.constraint(equalToConstant: 28),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .white
        
    }
}

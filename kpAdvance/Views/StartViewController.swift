//
//  StartViewController.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 2/25/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    private let labelImageView = UIImageView(image: #imageLiteral(resourceName: "darkAppLabel"))
    private let startLabel = UILabel()
    private let signInButton = UIButton()
    private let signUpButton = UIButton()
    private lazy var containerView = UIStackView(arrangedSubviews: [labelImageView, startLabel ,signInButton, signUpButton])

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAppearance()
        setUpConstraints()
    }

    private func setUpAppearance() {
        navigationController?.setNavigationBarHidden(true, animated: false) // TODO: move to caller
        view.backgroundColor = Theme.Color.gray

        containerView.alignment = .center
        containerView.axis = .vertical
        containerView.spacing = 20.0

        labelImageView.contentMode = .scaleAspectFit
        startLabel.font = UIFont.preferredFont(forTextStyle: .title1)

        signInButton.backgroundColor = Theme.Color.purple
        signInButton.layer.cornerRadius = 18.0

        signUpButton.backgroundColor = Theme.Color.purple
        signUpButton.layer.cornerRadius = 18.0
    }

    private func setUpConstraints() {
        view.addSubview(containerView)
        view.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }

        let bottomConstraint = containerView.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor)
        bottomConstraint.priority = .defaultHigh
        NSLayoutConstraint.activate([
            containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 35.0),
            containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -35.0),
            containerView.centerYAnchor.constraint(lessThanOrEqualTo: view.centerYAnchor),
            containerView.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor),
            bottomConstraint,

            signUpButton.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            signUpButton.heightAnchor.constraint(equalToConstant: 44.0),
            signInButton.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 44.0),
            ])

        containerView.setCustomSpacing(90.0, after:labelImageView)
        containerView.setCustomSpacing(50.0, after:startLabel)
    }

    func updateView() { // TODO: replace mock functions
        startLabel.text = "Let's start!"
        signInButton.setTitle("SIGN IN", for: .normal)
        signUpButton.setTitle("SIGN UP", for: .normal)
    }
}

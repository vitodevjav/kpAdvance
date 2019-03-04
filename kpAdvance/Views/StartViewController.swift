//
//  StartViewController.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 2/25/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    private let labelImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "darkAppLabel"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let startLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        return label
    }()

    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.Color.purple
        button.layer.cornerRadius = 18.0
        return button
    }()

    private let signUpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.Color.purple
        button.layer.cornerRadius = 18.0
        return button
    }()

    private lazy var containerView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelImageView, startLabel ,signInButton, signUpButton])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20.0
        stackView.setContentHuggingPriority(.required, for: .vertical)
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Theme.Color.gray
        setUpConstraints()
        navigationController?.setNavigationBarHidden(true, animated: false)
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

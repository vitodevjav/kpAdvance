//
//  SignUpViewController.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 3/6/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    private let labelImageView = UIImageView(image: #imageLiteral(resourceName: "darkAppLabel"))
    private let nameInputView = StandardInputView()
    private let emailInputView = StandardInputView()
    private let passwordInputView = StandardInputView()
    private let signUpButton = RoundedCornerButton(cornerRadius: 18.0)
    private let termsView = UILabel()
    private lazy var containerView = UIStackView(arrangedSubviews: [labelImageView, nameInputView, emailInputView, passwordInputView, signUpButton, signUpButton, termsView])

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAppearance()
        setUpConstraints()
    }

    private func setUpAppearance() {
        view.backgroundColor = Theme.Color.gray
        labelImageView.contentMode = .scaleAspectFit

        nameInputView.setUp(with: "Name", placeholder: "user name")
        emailInputView.setUp(with: "E-mail", placeholder: "example@gmail.com")
        passwordInputView.setUp(with: "Password", placeholder: "password", shouldHideContent: true)

        signUpButton.backgroundColor = Theme.Color.purple
        signUpButton.setTitle("SIGN UP", for: .normal)

        termsView.numberOfLines = 0
        termsView.textColor = Theme.Color.gray7
        termsView.font = UIFont.preferredFont(forTextStyle: .footnote)
        termsView.text = "By accessing your account you agree to our \n Terms and Conditions and Privacy Policy"
        
        containerView.spacing = 20.0
        containerView.axis = .vertical
        containerView.alignment = .center
    }

    private func setUpConstraints() {
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }

        NSLayoutConstraint.activate([
            containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 35.0),
            containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -35.0),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor),
            containerView.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor),

            nameInputView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            emailInputView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            passwordInputView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            signUpButton.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            signUpButton.heightAnchor.constraint(equalToConstant: 44.0),
            ])

        containerView.setCustomSpacing(5.0, after: labelImageView)
        containerView.setCustomSpacing(50.0, after: passwordInputView)
    }
}

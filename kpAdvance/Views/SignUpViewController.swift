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
    private let containerView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAppearance()
        setUpConstraints()
    }

    private func setUpAppearance() {
        nameInputView.configure(with: "Name", placeholder: "user name")
        emailInputView.configure(with: "E-mail", placeholder: "example@gmail.com")
        passwordInputView.configure(with: "Password", placeholder: "password", shouldHideContent: true)
        signUpButton.backgroundColor = Theme.Color.purple
        termsView.font = UIFont.preferredFont(forTextStyle: .footnote)
        containerView.spacing = 20.0
    }

    private func setUpConstraints() {
        containerView.pinToCenter(of: view, minimumAdaptiveInsets: UIEdgeInsets(top: 0.0, left: 35.0, bottom: 0.0, right: 35.0))
        containerView.setCustomSpacing(0.0, after: labelImageView)
        containerView.setCustomSpacing(50.0, after: passwordInputView)
    }
}

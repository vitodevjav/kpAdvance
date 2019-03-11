//
//  LoginViewController.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 3/4/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	private let labelImageView = UIImageView(image: #imageLiteral(resourceName: "darkAppLabel"))
	private let emailInputView = StandardInputView()
	private let passwordInputView = StandardInputView()
	private let signInButton = RoundedCornerButton(cornerRadius: 18.0)
	private let changeWayLinkButton = UIButton()
	private lazy var containerView = UIStackView(arrangedSubviews: [labelImageView, emailInputView, passwordInputView, signInButton, changeWayLinkButton])
	
	enum SignInType {
		case byEmail, byPhone
		var anotherWayLinkTitle: String {
			switch self {
			case .byEmail:
				return "Use your phone number instead"
			case .byPhone:
				return "Sign in by email and password"
			}
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setUpAppearance()
		setUpConstraints()
	}
	
	func updateView(with signInType: SignInType) {
		setUpLinkButton(with: .byPhone)
	}
	
	private func setUpAppearance() {
		view.backgroundColor = Theme.Color.gray
	
		emailInputView.setUp(with: "Email", placeholder: "example@gmail.com", shouldHideContent: false)
		passwordInputView.setUp(with: "Password", placeholder: "password", shouldHideContent: true)
		
		signInButton.setTitle("SIGN IN", for: .normal)
		signInButton.backgroundColor = Theme.Color.purple
		
		setUpLinkButton(with: .byEmail)
		
		containerView.axis = .vertical
		containerView.spacing = 20.0
	}
	
	private func setUpConstraints() {
		view.addSubview(containerView)
		containerView.translatesAutoresizingMaskIntoConstraints = false
		containerView.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
		
		NSLayoutConstraint.activate([
			containerView.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor),
			containerView.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor),
			containerView.leftAnchor.constraint(lessThanOrEqualTo: view.leftAnchor, constant: 35.0),
			containerView.rightAnchor.constraint(lessThanOrEqualTo: view.rightAnchor, constant: -35.0),
			containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			
			signInButton.heightAnchor.constraint(equalToConstant: 44.0)
			])
	}
	
	private func setUpLinkButton(with signInType: SignInType) {
		let attributedTitle = NSAttributedString(string: signInType.anotherWayLinkTitle, attributes: [NSAttributedString.Key.underlineStyle: 1])
		changeWayLinkButton.setAttributedTitle(attributedTitle, for: .normal)
	}
}

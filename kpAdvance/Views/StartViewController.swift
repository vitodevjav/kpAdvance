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
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let greetingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()

    private let startLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()

    private let signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = Theme.Color.dusk
        button.layer.cornerRadius = 18
        return button
    }()

    private let signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = Theme.Color.dusk
        button.layer.cornerRadius = 18
        return button
    }()

    private lazy var mainControlsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [startLabel ,signInButton, signUpButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        return stackView
    }()

    private lazy var textControlsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [greetingLabel, descriptionLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        return stackView
    }()

    private let centeredView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Theme.Color.gray
        view.addSubview(centeredView)
        centeredView.addSubview(labelImageView)
        centeredView.addSubview(textControlsStackView)
        centeredView.addSubview(mainControlsStackView)
        setUpConstraints()
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    private func setUpConstraints() {
        NSLayoutConstraint.activate([

            centeredView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            centeredView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            centeredView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            centeredView.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor),
            centeredView.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor),

            labelImageView.topAnchor.constraint(equalTo: centeredView.topAnchor),
            labelImageView.bottomAnchor.constraint(equalTo: textControlsStackView.topAnchor, constant: 35),
            labelImageView.leftAnchor.constraint(equalTo: centeredView.leftAnchor, constant: 50),
            labelImageView.rightAnchor.constraint(equalTo: centeredView.rightAnchor, constant: -10),

            textControlsStackView.leftAnchor.constraint(equalTo: centeredView.leftAnchor, constant: 50),
            textControlsStackView.rightAnchor.constraint(equalTo: centeredView.rightAnchor, constant: -10),
            textControlsStackView.bottomAnchor.constraint(equalTo: mainControlsStackView.topAnchor, constant: -50),
            
            mainControlsStackView.leftAnchor.constraint(equalTo: centeredView.leftAnchor, constant: 50),
            mainControlsStackView.rightAnchor.constraint(equalTo: centeredView.rightAnchor, constant: -50),
            mainControlsStackView.bottomAnchor.constraint(equalTo: centeredView.bottomAnchor, constant: -50),

            signUpButton.widthAnchor.constraint(equalTo: mainControlsStackView.widthAnchor),
            signUpButton.heightAnchor.constraint(equalToConstant: 44.0),
            signInButton.widthAnchor.constraint(equalTo: mainControlsStackView.widthAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 44.0),
            ])
    }

    func updateView() { // TODO: replace mock functions
        startLabel.text = "Let's start!"
        greetingLabel.text = "Hello"
        descriptionLabel.text = "We’ll help you manage your time and finance"

        signInButton.setTitle("SIGN IN", for: .normal)
        signUpButton.setTitle("SIGN UP", for: .normal)
    }
}

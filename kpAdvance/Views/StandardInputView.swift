//
//  StandardInputView.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 3/4/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit

class StandardInputView: UIView {
    private let titleLabel = UILabel()
    private let inputField = UITextField()
    private let separatorView = UIView()
    private lazy var container = UIStackView(arrangedSubviews: [titleLabel, inputField, separatorView])

    enum DisplayType {
        case plain, password
    }

    var text: String {
        return inputField.text ?? ""
    }

    init() {
        super.init(frame: .zero)
        addSubview(container)
        setUpAppearance()
        setUpConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUp(with title: String, placeholder: String? = nil, shouldHideContent: Bool = false) {
        titleLabel.text = title
        inputField.placeholder = placeholder
        inputField.isSecureTextEntry = shouldHideContent
    }

    private func setUpConstraints() {
        container.translatesAutoresizingMaskIntoConstraints = false
        container.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }

        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor),
            container.leftAnchor.constraint(equalTo: leftAnchor),
            container.rightAnchor.constraint(equalTo: rightAnchor),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),

            separatorView.heightAnchor.constraint(equalToConstant: 1.0),
            ])

        container.setCustomSpacing(8.0, after: titleLabel)
    }

    private func setUpAppearance() {
        container.axis = .vertical
        titleLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        separatorView.backgroundColor = .black
    }
}

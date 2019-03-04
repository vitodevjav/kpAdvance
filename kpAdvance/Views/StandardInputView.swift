//
//  StandardInputView.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 3/4/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit

class StandardInputView: UIView {
    enum DisplayType {
        case plain, password
    }

    var text: String {
        return inputField.text ?? ""
    }

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        return label
    }()

    private let inputField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    init() {
        super.init(frame: .zero)
        addSubview(titleLabel)
        addSubview(inputField)

        configureConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with title: String, placeholder: String? = nil, shouldHideContent: Bool = false) {
        titleLabel.text = title
        inputField.placeholder = placeholder
        inputField.isSecureTextEntry = shouldHideContent
    }

    private func configureConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor),
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor),

            inputField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0),
            inputField.leftAnchor.constraint(equalTo: titleLabel.leftAnchor),
            inputField.rightAnchor.constraint(equalTo: titleLabel.rightAnchor),
            inputField.topAnchor.constraint(equalTo: bottomAnchor),
            ])
    }
}

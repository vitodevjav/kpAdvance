//
//  ViewExtensions.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 3/6/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit

// MARK: Auto layout

extension UIView {
    func pinToCenter(of view: UIView, minimumAdaptiveInsets: UIEdgeInsets) {
        view.addConstraints([
            self.leftAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.leftAnchor, constant: minimumAdaptiveInsets.left),
            self.rightAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.rightAnchor, constant: -minimumAdaptiveInsets.right),
            self.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            self.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor, constant: minimumAdaptiveInsets.top),
            self.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -minimumAdaptiveInsets.bottom),
            ])
    }
}

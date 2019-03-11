//
//  RoundedCornerButton.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 3/6/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import UIKit

class RoundedCornerButton: UIButton {
    init(cornerRadius: CGFloat) {
        super.init(frame: .zero)
        layer.cornerRadius = cornerRadius
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

//
//  BorderButton.swift
//  Swoosh
//
//  Created by Connie Liu on 7/3/18.
//  Copyright © 2018 Connie Liu. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}

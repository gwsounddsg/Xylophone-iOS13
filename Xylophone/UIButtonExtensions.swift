// ===================================================
// Created by:  GW Rodriguez
// Date:        8/6/20
// Copyright:   Copyright © 2020 The App Brewery. All rights reserved.
// ===================================================

import UIKit


extension UIButton {
    func fadeAlpha(to value: CGFloat, duration: Double) {
        UIView.animate(withDuration: duration) {
            self.alpha = value
        }
    }
}

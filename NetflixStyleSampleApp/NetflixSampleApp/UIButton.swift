//
//  UIButton.swift
//  NetflixStyleSampleApp
//
//  Created by David Yoon on 2021/12/12.
//

import UIKit


extension UIButton {
    func adjustVerticalLayout(_ spacing: CGFloat = 0) {
        let imageSize = self.imageView?.frame.size ?? .zero
        let titleLableSize = self.titleLabel?.frame.size ?? .zero
        
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -(imageSize.height + spacing), right: 0)
        self.imageEdgeInsets = UIEdgeInsets(top: -(titleLableSize.height + spacing), left: 0, bottom: 0, right: -titleLableSize.width)
        
    }
}

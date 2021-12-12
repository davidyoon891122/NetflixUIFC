//
//  ContentCollectionViewHeader.swift
//  NetflixStyleSampleApp
//
//  Created by David Yoon on 2021/12/12.
//

import UIKit

class ContentCollectionViewHeader: UICollectionReusableView {
    let sectionNameLabel = UILabel()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.sectionNameLabel.font = .systemFont(ofSize: 17, weight: .bold)
        self.sectionNameLabel.textColor = .white
        self.sectionNameLabel.sizeToFit()
        
        self.addSubview(sectionNameLabel)
        
        self.sectionNameLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.top.bottom.leading.equalToSuperview().offset(10)
        }
    }
}

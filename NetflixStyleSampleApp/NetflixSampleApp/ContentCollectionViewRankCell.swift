//
//  ContentCollectionViewRankCell.swift
//  NetflixStyleSampleApp
//
//  Created by David Yoon on 2021/12/12.
//

import UIKit
import SnapKit

class ContentCollectionViewRankCell: UICollectionViewCell {
    let imageView = UIImageView()
    let rankLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.layer.cornerRadius = 5
        self.contentView.clipsToBounds = true
        
        self.imageView.contentMode = .scaleToFill
        self.contentView.addSubview(imageView)
        self.imageView.snp.makeConstraints{
            $0.top.trailing.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.8)
            
        }
        
        self.rankLabel.font = .systemFont(ofSize: 100, weight: .black)
        self.rankLabel.textColor = .white
        self.contentView.addSubview(rankLabel)
        self.rankLabel.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.bottom.equalToSuperview().offset(25)
            
        }
    }
}

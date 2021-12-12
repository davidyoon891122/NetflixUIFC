//
//  ContentCollectionViewMainCell.swift
//  NetflixStyleSampleApp
//
//  Created by David Yoon on 2021/12/12.
//

import UIKit
import SnapKit

class ContentCollectionViewMainCell: UICollectionViewCell {
    let baseStackView = UIStackView()
    let menuStackView = UIStackView()
    
    let tvButton = UIButton()
    let movieButton = UIButton()
    let categoryButton = UIButton()
    
    let imageView = UIImageView()
    let descriptionLabel = UILabel()
    let contentStackView = UIStackView()
    
    let plusButton = UIButton()
    let playButton = UIButton()
    let infoButton = UIButton()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        [baseStackView, menuStackView].forEach {
            self.contentView.addSubview($0)
        }
        
        self.baseStackView.axis = .vertical
        self.baseStackView.alignment = .center
        self.baseStackView.distribution = .fillProportionally
        self.baseStackView.spacing = 5
        
        [self.imageView, self.descriptionLabel, self.contentStackView].forEach {
            self.baseStackView.addArrangedSubview($0)
            
        }
        
        self.imageView.contentMode = .scaleAspectFit
        self.imageView.snp.makeConstraints {
            $0.width.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(imageView.snp.width)
        }
        
        self.descriptionLabel.font = .systemFont(ofSize: 13)
        self.descriptionLabel.textColor = .white
        self.descriptionLabel.sizeToFit()
        
        self.contentStackView.axis = .horizontal
        self.contentStackView.alignment = .center
        self.contentStackView.distribution = .equalCentering
        self.contentStackView.spacing = 20
        
        [self.plusButton, self.infoButton].forEach {
            $0.titleLabel?.font = .systemFont(ofSize: 13)
            $0.setTitleColor(.white, for: .normal)
            $0.imageView?.tintColor = .white
            $0.adjustVerticalLayout(5)
        }
        
        self.plusButton.setTitle("내가 찜한 컨텐츠", for: .normal)
        self.plusButton.setImage(UIImage(systemName: "plus"), for: .normal)
        self.plusButton.addTarget(self, action: #selector(plusButtonTapped(_:)), for: .touchUpInside)
        
        self.infoButton.setTitle("정보", for: .normal)
        self.infoButton.setImage(UIImage(systemName: "info.circle"), for: .normal)
        self.infoButton.addTarget(self, action: #selector(infoButtonTapped(_:)), for: .touchUpInside)
        
        
        self.playButton.setTitle("▸재생", for: .normal)
        self.playButton.setTitleColor(.black, for: .normal)
        self.playButton.backgroundColor = .white
        self.playButton.layer.cornerRadius = 3
        self.playButton.snp.makeConstraints{
            $0.width.equalTo(90)
            $0.height.equalTo(30)
        }
        
        self.playButton.addTarget(self, action: #selector(playButtonTapped(_:)), for: .touchUpInside)
        
        
        [self.plusButton, self.playButton, self.infoButton].forEach{
            self.contentStackView.addArrangedSubview($0)
        }
        
        self.contentStackView.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.height.equalTo(50)
            
        }
        
        
        self.baseStackView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        self.menuStackView.axis = .horizontal
        self.menuStackView.alignment = .center
        self.menuStackView.distribution = .equalSpacing
        self.menuStackView.spacing = 20
        
        [tvButton, movieButton, categoryButton].forEach {
            self.menuStackView.addArrangedSubview($0)
            $0.setTitleColor(.white, for: .normal)
            $0.layer.shadowColor = UIColor.black.cgColor
            $0.layer.shadowOpacity = 1
            $0.layer.shadowRadius = 3
        }
        
        self.tvButton.setTitle("TV 프로그램", for: .normal)
        self.movieButton.setTitle("영화", for: .normal)
        self.categoryButton.setTitle("카테고리 ▾", for: .normal)
        
        self.tvButton.addTarget(self, action: #selector(tvButtonTapped(_:)), for: .touchUpInside)
        self.movieButton.addTarget(self, action: #selector(movieButtonTapped(_:)), for: .touchUpInside)
        self.categoryButton.addTarget(self, action: #selector(categoryButtonTapped(_:)), for: .touchUpInside)
        
        menuStackView.snp.makeConstraints{
            $0.top.equalTo(self.baseStackView)
            $0.leading.trailing.equalToSuperview().inset(30)
        }
    }
    
    
    @objc func tvButtonTapped(_ sender: UIButton) {
        print("TEST: tvButton tapped...")
    }
    
    @objc func movieButtonTapped(_ sender: UIButton) {
        print("TEST: movieButton tapped...")
    }
    
    @objc func categoryButtonTapped(_ sender: UIButton) {
        print("TEST: categoryButton tapped...")
    }
    
    @objc func plusButtonTapped(_ sender: UIButton) {
        print("TEST: plusButton tapped...")
    }
    
    @objc func infoButtonTapped(_ sender: UIButton) {
        print("TEST: infoButton tapped...")
    }
    
    @objc func playButtonTapped(_ sender: UIButton) {
        print("TEST: playButton tapped...")
    }
}

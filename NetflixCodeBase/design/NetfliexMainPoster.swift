//
//  NetfliexMainPoster.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit



class NetfliexMainPoster {
    static func settingMainPoster() {
        
    }
}

extension NefelixTableViewCell {
    func configualPosterView() {
       
//        contentView.snp.makeConstraints { make in
//            make.height.equalTo(500)
//        }
//        
        posterView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(24)
            make.top.bottom.equalTo(contentView.safeAreaLayoutGuide).inset(8)
            make.height.equalTo(480).priority(900)
            
        }
        
        posterImageView.snp.makeConstraints { make in
            make.size.equalTo(posterView)
            make.horizontalEdges.equalTo(posterView)
            make.verticalEdges.equalTo(posterView)
            
        }
        
        startButton.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(posterView).inset(20).dividedBy(2)
            make.bottom.equalTo(posterView).inset(24)
            make.height.equalTo(40)
        }
        userSelectListButton.snp.makeConstraints { make in
            make.trailing.equalTo(posterView).inset(20)
            make.width.equalTo(startButton)
            make.bottom.equalTo(posterView).inset(24)
            make.height.equalTo(40)
        }
        
        genreLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(startButton.snp.top).inset(-12)
            make.height.equalTo(20)
        }
        
      
       
        
        posterImageView.image = UIImage(named: "노량")
        
        
        userSelectListButton.backgroundColor = .green
        genreLabel.text = "응원하고픈 ﹒ 흥미진진 ﹒ 사극 ﹒ 전투 ﹒ 한국 작품"
        //genreLabel.backgroundColor = .red
        genreLabel.font = .systemFont(ofSize: 14)
        genreLabel.textAlignment = .center
        genreLabel.textColor = .white
        genreLabel.shadowColor = .gray
        genreLabel.shadowOffset = CGSize(width: 1, height: 0.1)
        
    
        var startButtonConfig = UIButton.Configuration.filled()
        startButtonConfig.baseBackgroundColor = .white
        startButtonConfig.baseForegroundColor = .black
        startButtonConfig.title = "재생"
        startButtonConfig.image = UIImage(systemName: "play.fill")
        startButtonConfig.imagePadding = 8
        
        startButton.configuration = startButtonConfig
        
        
        var userSelectConfig = UIButton.Configuration.filled()
        userSelectConfig.baseBackgroundColor = .darkGray
        userSelectConfig.baseForegroundColor = .white
        //userSelectConfig.attributedTitle = Attributed
        // userSelectConfig.title = "내가 찜한 리스트"
        var titleContainer = AttributeContainer()
        titleContainer.font = UIFont.boldSystemFont(ofSize: 12)
        
        userSelectConfig.attributedTitle = AttributedString("내가 찜한 리스트", attributes: titleContainer)
        userSelectConfig.imagePadding = 3
        userSelectConfig.image = UIImage(systemName: "plus")
        
        userSelectListButton.configuration = userSelectConfig
    }
    
    
    func configureHierarchy() {
        
        
        contentView.addSubview(posterView)
        posterView.addSubview(posterImageView)
        posterView.addSubview(genreLabel)
        posterView.addSubview(startButton)
        posterView.addSubview(userSelectListButton)
    }
}

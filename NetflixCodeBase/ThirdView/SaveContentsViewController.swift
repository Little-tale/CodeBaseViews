//
//  SaveContentsViewController.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit
import SnapKit

class SaveContentsViewController: UIViewController {
    let mainLabel = UILabel()
    let sublabel = UILabel()
    let ImageView = UIImageView()
    
    let settingButton = UIButton()
    let searchSaveButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configualHierarchy()
        setnavigation()
        configualView()
        designView()
    }
    func setnavigation() {
        navigationItem.title = "저장한 콘텐츠 목록"
    }

    func configualHierarchy() {
        self.view.addSubview(ImageView)
        self.view.addSubview(sublabel)
        self.view.addSubview(mainLabel)
        self.view.addSubview(searchSaveButton)
        self.view.addSubview(settingButton)
    }
    
    func configualView() {
        ImageView.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(self.view.safeAreaLayoutGuide)
            make.width.equalTo(view).dividedBy(1)
            make.height.equalTo(view).dividedBy(3)
            
        }
        
        sublabel.snp.makeConstraints { make in
            make.bottom.equalTo(ImageView.snp.top).inset(-4)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        mainLabel.snp.makeConstraints { make in
            make.bottom.equalTo(sublabel.snp.top).inset(-8)
            make.centerX.equalTo(view)
            make.height.equalTo(50)
        }
        searchSaveButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(24)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
        }
        
        settingButton.snp.makeConstraints { make in
            make.bottom.equalTo(searchSaveButton.snp.top).inset(-8)
            make.width.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    func designView() {
        ImageView.image = UIImage(named: "dummy")
        ImageView.clipsToBounds = true
        ImageView.contentMode = .scaleAspectFill
        
        sublabel.numberOfLines = 0
        sublabel.textAlignment = .center
        sublabel.font = .systemFont(ofSize: 14, weight: .light)
        sublabel.textColor = .systemGray
        sublabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다 디바이스에 언제나 시청할 컨텐츠가 준비되니 지루할 틈이 없어요."
        
        mainLabel.text = "'나만의 자동 저장' 기능"
        mainLabel.font = .systemFont(ofSize: 24, weight: .bold)
        
        var searchSaveButtonConfigu = UIButton.Configuration.filled()
        //T##AttributeContainer
        var att = AttributeContainer()
        att.font = .systemFont(ofSize: 16, weight: .bold)
       
        searchSaveButtonConfigu.attributedTitle = AttributedString("저장 가능한 콘텐츠 살펴보기", attributes: att)
        searchSaveButtonConfigu.baseBackgroundColor = .white
        searchSaveButtonConfigu.baseForegroundColor = .black
        searchSaveButton.configuration = searchSaveButtonConfigu
        
        var settingButtonConfigual = UIButton.Configuration.filled()
        var fontConfigu = AttributeContainer()
        fontConfigu.font = .systemFont(ofSize: 16, weight: .bold)

        settingButtonConfigual.attributedTitle = AttributedString("설정하기", attributes: fontConfigu)
        
        settingButton.configuration = settingButtonConfigual
    }
}

#Preview{
    SaveContentsViewController()
}

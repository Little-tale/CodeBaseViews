//
//  NewAndHotViewController.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit
import SnapKit

class NewAndHotViewController: UITabBarController {
    
    let searchBar = UISearchBar()
    let searchView = UIView()
    
    let buttonView = UIView()
    
    let firstButton = UIButton()
    let seconfButton = UIButton()
    let ThirdButton = UIButton()
    
    let noTextMain = UILabel()
    let noTextSub = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setNavi()
        configureHierarchy()
        configualView()
        designView()
    }
    
    func setNavi(){
        navigationItem.title = "NEW & HOT 검색"
    }
    
    func configureHierarchy() {
        self.view.addSubview(searchView)
        self.view.addSubview(buttonView)
        searchView.addSubview(searchBar)
        buttonView.addSubview(firstButton)
        buttonView.addSubview(seconfButton)
        buttonView.addSubview(ThirdButton)
        
        self.view.addSubview(noTextMain)
        self.view.addSubview(noTextSub)
    }
    func configualView(){
        searchView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(8)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(searchBar.snp.height)
        }
        
        buttonView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view)
            make.top.equalTo(searchBar.snp.bottom)
            make.height.equalTo(52)
        }
        
        searchBar.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(searchView)
            make.top.equalTo(searchView)
        }
        firstButton.snp.makeConstraints { make in
            make.centerY.equalTo(buttonView)
            make.leading.equalTo(buttonView).inset(8)
        }
        seconfButton.snp.makeConstraints { make in
            make.centerY.equalTo(buttonView)
            make.leading.equalTo(firstButton.snp.trailing).inset(-8)
        }
        ThirdButton.snp.makeConstraints { make in
            make.centerY.equalTo(buttonView)
            make.leading.equalTo(seconfButton.snp.trailing).inset(-8)
        }
        
        noTextMain.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view).offset(-40)
            make.height.equalTo(40)
        }
        noTextSub.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(noTextMain.snp.bottom).inset( -4 )
            make.leading.greaterThanOrEqualTo( 4 )
            make.trailing.lessThanOrEqualTo( -4 )
        }
        
        
    }
    
    func designView(){
     
        noTextMain.text = "이런! 찾으시는 작품이 없습니다!"
        noTextSub.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요"
        searchBar.placeholder = "게임, 시리즈, 영화를 검색하세요..."
    
        
        noTextMain.font = .systemFont(ofSize: 24, weight: .bold)
        noTextSub.font = .systemFont(ofSize: 16, weight: .medium)
        noTextSub.textColor = .systemGray
        
        designButton(button: firstButton, title: "공개 예정", image: "blue" )
        designButton(button: seconfButton, title: "모두의 인기 컨텐츠", image: "turquoise" )
        designButton(button: ThirdButton, title: "TOP 10 시리즈", image: "pink" )
        
        firstButton.addTarget(self, action: #selector(chage), for: .touchUpInside)
        seconfButton.addTarget(self, action: #selector(chage), for: .touchUpInside)
        ThirdButton.addTarget(self, action: #selector(chage), for: .touchUpInside)
        
        
    }
    @objc func chage(sender: UIButton){
        sender.isSelected.toggle()
    }
    
    
    func designButton(button: UIButton,title: String, image: String){
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .black
        config.baseForegroundColor = .white
        config.image = UIImage(named: image)
        config.cornerStyle = .large
       //<#T##AttributeContainer#>
        var attriButtonText = AttributeContainer()
        attriButtonText.font = UIFont.systemFont(ofSize: 11)
        config.attributedTitle = AttributedString(title, attributes: attriButtonText)
        config.imagePadding = 8
        button.configuration = config
        
        
        var selectedConfig = UIButton.Configuration.filled()
        selectedConfig.baseBackgroundColor = .white
        selectedConfig.baseForegroundColor = .black
        selectedConfig.image = UIImage(named: image)
        selectedConfig.attributedTitle = AttributedString(title, attributes: attriButtonText)
        selectedConfig.imagePadding = 8
        
        // var configurationUpdateHandler: UIButton.ConfigurationUpdateHandler?
        button.configurationUpdateHandler = {
            button in
            button.configuration = button.isSelected ? selectedConfig : config
        }
    }
   

}
#Preview{
    NewAndHotViewController()
}

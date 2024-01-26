//
//  NeflixContentsTableViewCell.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit
import SnapKit

class NeflixContentsTableViewCell: UITableViewCell {
    let stackView = UIStackView()
    let firstImage = UIImageView()
    let secondImage = UIImageView()
    let thirdImage = UIImageView()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        print(#function)
        configualHierarchy()
        configualView()
        self.backgroundColor = .green
        secondImage.backgroundColor = .yellow
    }
    
    func configualHierarchy() {
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(firstImage)
        stackView.addArrangedSubview(secondImage)
        stackView.addArrangedSubview(thirdImage)
    }
    func configualView() {
        stackView.snp.makeConstraints { make in
            make.verticalEdges.equalTo(contentView)
            make.height.equalTo(140)
            make.horizontalEdges.equalTo(contentView).inset(12)
        }
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 24
        
        firstImage.snp.makeConstraints { make in
            //make.height.equalTo(60)
            //make.width.equalTo(60)
            
        }
        secondImage.snp.makeConstraints { make in
            make.width.equalTo(firstImage)
        }
        thirdImage.snp.makeConstraints { make in
            make.width.equalTo(firstImage)
        }
        
        firstImage.backgroundColor = .lightGray
        secondImage.backgroundColor = .orange
        thirdImage.backgroundColor = .purple
        
        firstImage.image = UIImage(named: images.Random)
        secondImage.image = UIImage(named: images.Random)
        thirdImage.image = UIImage(named: images.Random)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

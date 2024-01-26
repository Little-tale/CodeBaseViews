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
    }
    
    func configualHierarchy() {
        contentView.addSubview(stackView)
        // MARK: - 2. addArrangerSubView!!!
        stackView.addArrangedSubview(firstImage)
        stackView.addArrangedSubview(secondImage)
        stackView.addArrangedSubview(thirdImage)
    }
    func configualView() {
        stackView.snp.makeConstraints { make in
            make.verticalEdges.equalTo(contentView)
            make.height.lessThanOrEqualTo(150)
            make.height.greaterThanOrEqualTo(100)
            make.horizontalEdges.equalTo(contentView).inset(12)
//            make.leading.equalTo(contentView).inset(12)
//            make.trailing.equalTo(contentView).inset(-12)
            
        }
        
        // MARK: - 1.
        stackView.clipsToBounds = true
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        
        stackView.spacing = 24
        
        firstImage.image = UIImage(named: images.Random)
        firstImage.contentMode = .scaleAspectFill
        secondImage.image = UIImage(named: images.Random)
        secondImage.contentMode = .scaleAspectFill
        thirdImage.image = UIImage(named: images.Random)
        thirdImage.contentMode = .scaleAspectFill
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

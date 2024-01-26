//
//  NefelixTableViewCell.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit

class NefelixTableViewCell: UITableViewCell {
    let posterView = UIView()
    let posterImageView = UIImageView()
    let genreLabel = UILabel()
    let startButton = UIButton()
    let userSelectListButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        print(#function)
        // contentView.backgroundColor = .red
        configureHierarchy()
        configualPosterView()
        
        
        DispatchQueue.main.async {
            self.posterImageView.clipsToBounds = true
            self.posterImageView.layer.cornerRadius = self.posterView.frame.width / 24
        }
        
        
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

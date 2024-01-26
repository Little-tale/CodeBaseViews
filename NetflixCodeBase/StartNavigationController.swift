//
//  StartNavigationController.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit

class StartNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = ViewController()
        print(#function)
        self.navigationBar.isTranslucent = false
        view.backgroundColor = .clear
        self.pushViewController(vc, animated: true)
        self.navigationBar.backgroundColor = .clear
        self.navigationBar.tintColor = .black
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor(.white)]
        
    }
    

    

}

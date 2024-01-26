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
        
        print(#function, "시작 네비게이션")
        self.navigationBar.isTranslucent = false
        view.backgroundColor = .clear
       
        self.navigationBar.backgroundColor = .clear
        self.navigationBar.tintColor = .black
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor(.white)]
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let vc = ViewController()
        self.pushViewController(vc, animated: false)
    }

    

}

#Preview{
    StartNavigationController()
}

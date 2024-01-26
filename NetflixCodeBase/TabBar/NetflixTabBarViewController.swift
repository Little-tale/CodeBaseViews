//
//  NetflixTabBarViewController.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit

class NetflixTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor = .brown
       
        // navigationController?.pushViewController(vc, animated: false)
        
    }
    override func viewWillAppear(_ animated: Bool) {
       
    }
    override func viewDidAppear(_ animated: Bool) {
        let vc = StartNavigationController()
        print(#function, "탭바")
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false)
    }

}

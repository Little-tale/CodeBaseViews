//
//  ViewController.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let tableView = UITableView()
    let nowContentsLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(NefelixTableViewCell.self, forCellReuseIdentifier: NefelixTableViewCell.getIdenty)
        tableView.register(NeflixContentsTableViewCell.self, forCellReuseIdentifier: NeflixContentsTableViewCell.getIdenty)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.estimatedRowHeight = 500
        
        configureHierarchy()
        
        configualPosterView()
        navigationSetting()
        view.backgroundColor = .black
       
        
    }
    
    func navigationSetting(){
        navigationItem.title = "김재형씨"
        
        let rightBarItem = UIBarButtonItem(title: "다음", style: .plain, target: self , action: #selector(nextView))
        rightBarItem.tintColor = .white
        navigationItem.rightBarButtonItem = rightBarItem
    }
    
    @objc func nextView(){
        let vc = NewAndHotViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    func configualPosterView(){
        tableView.snp.makeConstraints { make in
            make.horizontalEdges.verticalEdges.equalTo(view.safeAreaLayoutGuide).priority(.high)
        }
        // tableView.backgroundColor = .blue
    }
    
    func configureHierarchy() {
        self.view.addSubview(tableView)
    }
    override func viewDidLayoutSubviews() {
       
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: NefelixTableViewCell.getIdenty) as! NefelixTableViewCell
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: NeflixContentsTableViewCell.getIdenty) as! NeflixContentsTableViewCell
        tableView.headerView(forSection: 1)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "지금 뜨는 컨텐츠"
        }
        return nil
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
}

#Preview{
    ViewController()
}

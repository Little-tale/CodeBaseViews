//
//  imagedata.swift
//  NetflixCodeBase
//
//  Created by Jae hyung Kim on 1/26/24.
//

import UIKit

enum images : String, CaseIterable {
    case one = "아바타물의길"
    case two = "더퍼스트슬램덩크"
    case three = "스즈메의문단속"
    case four = "범죄도시3"
    case five = "서울의봄"
    
    static var Random : String {
        return self.allCases.randomElement()?.rawValue ?? ""
    }
}

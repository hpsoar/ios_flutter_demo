//
//  NewsVC.swift
//  FlutterHybridDemo
//
//  Created by Huang Peng on 2019/3/30.
//  Copyright © 2019 Lattern. All rights reserved.
//

import Foundation

class NewsVC : HBFlutterVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRoute(route: "news_list")
    }
}

//
//  ViewController.swift
//  intens36-Lukyanov
//
//  Link to Youtube
//  https://www.youtube.com/watch?v=79RrzTS4SNA
//  Created by max on 12.10.17.
//  Copyright © 2017 max. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://httpbin.org/get"
        Alamofire.request(url, methodq: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("UserAgent: \(json["headers"]["User-Agent"])")
            case .failure(let error):
                print(error)
            }
        }
    }
}

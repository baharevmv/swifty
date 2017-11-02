//
//  SecondViewController.swift
//  Swift2-Lesson2
//
//  Created by max on 26.10.17.
//  Copyright © 2017 Maksim Bakharev. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second", arc4random_uniform(10))
        
    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    deinit {
        print("close second")
    }
}

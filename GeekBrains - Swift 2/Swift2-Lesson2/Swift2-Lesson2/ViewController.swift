//
//  ViewController.swift
//  Swift2-Lesson2
//
//  Created by max on 26.10.17.
//  Copyright © 2017 Maksim Bakharev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "First"
        print("First", arc4random_uniform(10))
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func close(_ sender: Any) {
        print((sender as! UIButton).tag)
        dismiss(animated: false, completion: nil)
    }
    deinit {
        print("close first")
    }
    
}


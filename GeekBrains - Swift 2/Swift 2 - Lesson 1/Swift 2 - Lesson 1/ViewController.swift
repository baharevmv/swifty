//
//  ViewController.swift
//  Swift 2 - Lesson 1
//
//  Created by max on 23.10.17.
//  Copyright © 2017 max. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelStoryBoard: UILabel!

    @IBOutlet weak var textFieldStoryBoard: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        РУЧНОЕ ДОБАВЛЕНИЕ ЛЕЙБЛА (КРУТО)
//        print("Hello world")
//        let label: UILabel = UILabel()
//        label.frame.size.width = 50
//        label.frame.size.height = 30
//        label.frame.origin.y = 100
//        label.frame.origin.x = 40
//        label.text = "Hello World"
//        view.addSubview(label)
//
//        for element in view.subviews {
//            print (element)
//        }
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonStoryBoardAction(_ sender: Any) {
        labelStoryBoard.text = textFieldStoryBoard.text
    }
    
}


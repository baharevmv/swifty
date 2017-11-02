//
//  TESTVIEWCONTROLLER.swift
//  Swift2-Lesson2
//
//  Created by max on 26.10.17.
//  Copyright © 2017 Maksim Bakharev. All rights reserved.
//

import UIKit

class TESTVIEWCONTROLLER: UIViewController {
    var Newdata: String
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  learning_ios
//
//  Created by Евгений Васильев on 02/04/2018.
//  Copyright © 2018 MyakushStudio. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {

    override func viewDidLoad() {
    super.viewDidLoad()
        let cppWrapper = CppWrapper()
        // get int
        let int = cppWrapper.getInt()
        os_log("%d", int)
        // get string
        let string = cppWrapper.getString();
        os_log("%@", string!);
    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }



}

//
//  ViewController.swift
//  CICDSample
//
//  Created by Satish Mavani on 13/12/19.
//  Copyright © 2019 LTI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        #if Red
            self.view.backgroundColor = UIColor.red
        #elseif Blue
            self.view.backgroundColor = UIColor.blue
        #elseif Green
            self.view.backgroundColor = UIColor.green
        #else
            self.view.backgroundColor = UIColor.gray
        #endif
    }


}


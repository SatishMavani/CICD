//
//  ViewController.swift
//  CICDSample
//
//  Created by Satish Mavani on 13/12/19.
//  Copyright © 2019 LTI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var btnClickMe: UIButton!
    
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
        
        var nsDictionary: NSDictionary?
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
           nsDictionary = NSDictionary(contentsOfFile: path)
            
            if let value = nsDictionary?["ShowClickButton"] as? Bool {
                if value {
                    self.btnClickMe.isHidden = false
                }
                else{
                    if (self.btnClickMe != nil) {
                        self.btnClickMe.isHidden = true
                    }
                }
            }
            
        }
        
    }
}


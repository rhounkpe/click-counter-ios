//
//  ViewController.swift
//  Click Counter
//
//  Created by Rufin Hounkpe on 16/06/2020.
//  Copyright © 2020 Digit Com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }


}


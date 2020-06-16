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
    var label: UILabel!
    var additionalLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        
        // Additional Label
        let additionalLabel = UILabel()
        additionalLabel.frame = CGRect(x: 150, y: 180, width: 60, height: 60)
        additionalLabel.text = label.text
        
        
        view.addSubview(label)
        self.label = label
        
        view.addSubview(additionalLabel)
        self.additionalLabel = additionalLabel
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 160, height: 160)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 350, width: 180, height: 180)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.additionalLabel.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.additionalLabel.text = "\(self.count)"
    }


}


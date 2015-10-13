//
//  ViewController.swift
//  Search_loadDuration
//
//  Created by Hyman on 15/10/13.
//  Copyright © 2015年 YANPANPAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let button = UIButton()
        button.frame = CGRectMake(0, 100, 320, 50)
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: Selector("pushEvent"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pushEvent() {
    
        let ctr = PersonCenterSudokuViewController.wc_create()
        self.navigationController?.pushViewController(ctr, animated: true)

    }

}


//
//  ViewController.swift
//  anime-sixyonn
//
//  Created by KeitaroKawahara on 2017/10/28.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var blueView: UIView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.blueView.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .autoreverse, animations: {
            self.blueView.center.y += 100.0
        }, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


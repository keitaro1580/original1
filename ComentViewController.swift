//
//  ComentViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/10/28.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit

class ComentViewController: UIViewController {
    let saveData: UserDefaults = UserDefaults.standard
    @IBOutlet var comentText: UITextField!
    @IBAction func comentosave(){
        saveData.set(comentText.text, forKey: "coment")

        self.dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        comentosave()
        

  

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

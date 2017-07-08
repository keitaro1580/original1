//
//  ViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/05/13.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    @IBOutlet var lable: UILabel!
    @IBOutlet var lable1:UILabel!
    @IBOutlet var lable2:UILabel!
    //宣言
    let saveData: UserDefaults = UserDefaults.standard

    var pickerviewArray:String!
    
    //let saveData: UserDefaults = UserDefaults.standard
    //saveData.set(tokoroArray,forKey:"picker")

    //場所の配列
    var tokoroArray:[String] = ["新宿","渋谷","目黒","品川","お台場","港区"]
    
    //let saveData: UserDefaults = UserDefaults.standard
    
    //pickerviewArray = saveData.object(forKey:"picker")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //乱数を生成 tokoroは変数
        var tokoro : Int = Int(arc4random_uniform(5))
        //その乱数のインデックスの配列の値をラベルに表示する
        lable1.text = tokoroArray[tokoro]
        print(tokoro)
        
        //値を読み込む
        pickerviewArray = saveData.object(forKey:"picker2") as! String
        lable.text = String(pickerviewArray)
        
    
        //tokoroArray = saveData.object(forKey: "picker")
        
    }
    

    @IBAction func tokoro(){
        
    
    tokoroArray = saveData.object(forKey: "picker") as! [String]
    lable2.text = pickerviewArray
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



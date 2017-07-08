//
//  GenreViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/05/27.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit

class GenreViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet var button:UIButton!
    @IBOutlet var mypickerview:UIPickerView!
    let pickerviewArray: NSArray = ["ファッション","遊び","ショッピング"]
   
    //ユーザーデフォルトアクセス
    let saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //mypickerviewのデリゲートのなる
        mypickerview.delegate = self
        //mypickerviewのデータソースになる
        mypickerview.dataSource = self
        
        
        
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    /*
     pickerに表示する行数を返すデータソースメソッド.
     (実装必須)
     */
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerviewArray.count
    }
    
    /*
     pickerに表示する値を返すデリゲートメソッド.
     */
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerviewArray[row] as? String
    }
    
    /*
     pickerが選択された際に呼ばれるデリゲートメソッド.
     */
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row: \(row)")
        print("value: \(pickerviewArray[row])")
        saveData.set(pickerviewArray[row], forKey: "picker2" )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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

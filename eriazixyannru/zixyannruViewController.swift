//
//  zixyannruViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/05/13.
//  Copyright © 2017年 keitaro. All rights reserved.
//

/*import UIKit

class zixyannruViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet var button:UIButton!
    @IBOutlet var pickerview:UIPickerView!
    

    
        //表示する配列
    let pickerviewArray: NSArray = ["ファッション","グルメ","遊び","ショッピング"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //mypickerviewのデリゲートのなる
        pickerview.delegate = self
        //mypickerviewのデータソースになる
        pickerview.dataSource = self
        
    }
    
    
    //ピッカービューのコンポネートの個数を返す
		    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
    }
    


    //各コンポネートの行数を返す
    func pickerview(_ pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
            return pickerviewArray.count
        }
    
    func pickerview(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
            return pickerviewArray[row] as? String
            //指定のコンポネートから指定行の項目名を取り出す
            //let item = pickerviewhairetu[component][row]
            // return item
            
    }

        //ドラムが回転して項目が選ばれた
        func pickerview(_ pickerView: UIPickerView, didSelectRow row: Int,inComponent component: Int){
            print("row: \(row)")
            print("value:\(pickerviewArray[row])")
            
            //選ばれた項目
            //let item = compos[component][row]
            //現在選択されている行番号
            //let row1 = pickerview.selectedRow(inComponent: 0)
            // let row2 = pickerview.selectedRow(inComponent: 1)
            //let
            
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
       //丸角（ボタン）にするコード
        
        //button.layer.cornerRadius = 3
       // button.clipsToBounds = true
        

    }
    

   
}
*/

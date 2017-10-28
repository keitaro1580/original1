//
//  TableViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/07/08.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{//,UIPickerViewDataSource,UIPickerViewDelegate{
   // let asobisibuyaArray: NSArray = []
       //ユーザーデフォルトアクセス
    let saveData: UserDefaults = UserDefaults.standard
    var pickerviewArray:String!
    
    
    @IBAction func modoru(){
    
        self.presentationController?.presentingViewController.dismiss(animated: true, completion: nil)
    }
    
    
   //ストリーボードであつかうテーブルビューの宣言
    @IBOutlet var table: UITableView!
    
    //場所とジャンルの変数を宣言する
    var tokoro:String!
    var erabu:String!
    
    var basyoArray = [String]()
    
    
    //@IBAction func table {
        
        
   // }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //テーブルビューのデータソースメソットはTableViewControllerに書くよという設定
        table.dataSource = self
        table.delegate=self
        
        //データを取り出すコード
        tokoro = saveData.object(forKey:"tokoro") as! String
        erabu = saveData.object(forKey:"Genre") as! String
        print(tokoro,erabu)
        
        //場合分け
        if tokoro=="渋谷"&&erabu=="遊び"{
            basyoArray=["ヒカリエ","渋谷マークシティー","渋谷１０９","LOFT","東急ハンズ"]
        
        }else if tokoro=="新宿"&&erabu=="遊び"{
            basyoArray=["新宿バッティングセンター","新宿御苑","新宿中央公園","東京都庁展望室","博品館"]
            
            
        }else if tokoro=="目黒"&&erabu=="遊び"{
            
            basyoArray=["碑文谷公園","祐天寺","現代彫刻美術館","清水池公園","自由が丘デパート"]
        }else if tokoro=="品川"&&erabu=="遊び"{
            basyoArray=["アクアパーク品川","PRENCE CINEMA品川","品川プリンスホテルボウリングセンター","天王洲アイル","T.Y.HARBOR"]
        }else if tokoro=="お台場"&&erabu=="遊び"{
            basyoArray=["日本科学未来館","キッザニア東京","大江戸温泉物語","お台場海浜公園","ジョイポリス"]
            
        }else if tokoro=="港区"&&erabu=="遊び"{
            basyoArray=["東京タワー","国立新美術館","虎ノ門ヒルズ","六本木ヒルズ","迎賓館赤坂離宮"]
            
            //ファッション
        }else if tokoro=="渋谷"&&erabu=="ファッション"{
            basyoArray=["ヒカリエ","渋谷マルイ","渋谷１０９","渋谷マークシティー","cocoti SHIBUYA"]
            
            
            
        }else if tokoro=="新宿"&&erabu=="ファッション"{
            basyoArray=["高島屋","三越","小田急デパート","伊勢丹","京王百貨店"]
            
            
        }else if tokoro=="目黒"&&erabu=="ファッション"{
            
            basyoArray=["アトレ","soffito 中目黒店","MARcourt 自由が丘","無印用品　アトレ店",""]
        }else if tokoro=="品川"&&erabu=="ファッション"{
            basyoArray=["アトレ品川","ユニクロ　エキュート　品川サウス","ウィング高輪","天王洲アイル","エキュート品川サウス"]
        }else if tokoro=="お台場"&&erabu=="ファッション"{
            basyoArray=["アクアシティお台場","デックス東京ビーチ","ダイバーシティ東京プラザ","トイザラス","マルエツ　お台場店"]
            
        }else if tokoro=="港区"&&erabu=="ファッション"{
            basyoArray=["東京ミッドタウン","マルエツ","虎ノ門ヒルズ","六本木ヒルズ","青山ショッピングセンター"]
            //ショツピング
        }else if tokoro=="渋谷"&&erabu=="ショッピング"{
            basyoArray=["ヒカリエ","渋谷マルイ","渋谷１０９","渋谷マークシティー","LOFT"]
            
            
            
        }else if tokoro=="新宿"&&erabu=="ショッピング"{
            basyoArray=["高島屋","三越","小田急デパート","伊勢丹","京王百貨店"]
            
            
        }else if tokoro=="目黒"&&erabu=="ショッピング"{
            
            basyoArray=["アトレ","東急ストア","ヒルサイドテラス","TENOHA代官山","無印用品　アトレ店"]
        }else if tokoro=="品川"&&erabu=="ショツピング"{
            basyoArray=["アトレ品川","ユニクロ　エキュート　品川サウス","ウィング高輪","天王洲アイル","エキュート品川サウス"]
        }else if tokoro=="お台場"&&erabu=="ショッピング"{
            basyoArray=["アクアシティお台場","デックス東京ビーチ","ダイバーシティ東京プラザ","トイザラス","マルエツ　お台場店"]
            
        }else if tokoro=="港区"&&erabu=="ショッピング"{
            basyoArray=["東京ミッドタウン","青山ショッピングセンター","アトレ品川","ウィング高輪","虎ノ門ヒルズ"]
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     //pose of any resources that can be recreated.
    
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return basyoArray.count
    }
    
    
        
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
            
            cell?.textLabel?.text = basyoArray[indexPath.row]
            print("done")
            return cell!
    }
 
        
        
        
}

        
        
    

    

    /*// MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

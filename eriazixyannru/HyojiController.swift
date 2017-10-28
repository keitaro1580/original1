//
//  HyojiController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/07/29.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit

class HyojiController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    // let asobisibuyaArray: NSArray = []
    //ユーザーデフォルトアクセス
    
    @IBAction func modoru(){
        presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    let saveData: UserDefaults = UserDefaults.standard
    var pickerviewArray:String!
    
    //ストリーボードであつかうテーブルビューの宣言
    @IBOutlet var table: UITableView!
    
    //場所とジャンルの変数を宣言する
    var tokoro:String!
    var erabu:String!
    
    var basyoArray = [String]()
    var basyo = ""
    
    
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
            basyoArray=["ヒカリエ","渋谷マークシティ","渋谷１０９","LOFT","東急ハンズ"]
            
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
            basyoArray=["高島屋","ルミネ新宿","小田急デパート","伊勢丹","京王百貨店"]
            
            
        }else if tokoro=="目黒"&&erabu=="ファッション"{
            
            basyoArray=["アトレ","soffito 中目黒店","MARcourt 自由が丘","無印用品　アトレ店","ひかり街"]
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
            basyoArray=["高島屋","ルミネ新宿","小田急デパート","伊勢丹","京王百貨店"]
            
            
        }else if tokoro=="目黒"&&erabu=="ショッピング"{
            
            basyoArray=["アトレ","東急ストア","ヒルサイドテラス","TENOHA代官山","無印用品　アトレ店"]
        }else if tokoro=="品川"&&erabu=="ショッピング"{
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basyoArray.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = basyoArray[indexPath.row]
        print("done")
        return cell!
    }
    
    func osu(){
        
        //タップされた時のメソットがわからない
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let sb = self.storyboard!
        //let vc = sb.instantiateViewController(withIdentifier: "CellTap") as! CellTapViewController
        self.basyo = basyoArray[indexPath.row]
        performSegue(withIdentifier: "celltap", sender: nil)
//        navigationController?.pushViewController(viewController, animated: true)
        //vc.titleStr = basyoArray[indexPath.row]
        //present(vc, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CellTapViewController
        vc.titleStr = basyo
    }
    
    
}



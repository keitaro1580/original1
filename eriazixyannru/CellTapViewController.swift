//
//  CellTapViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/08/06.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit

class CellTapViewController: UIViewController, UITextFieldDelegate {
    let saveData: UserDefaults = UserDefaults.standard
    @IBOutlet weak var kuwasii: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var coment: UILabel!
    var comentdasu: String!

    var titleStr = ""
    var jusyo = ""
    var ido = 0.0
    var keido = 0.0
    var key: String = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleStr
        if titleStr == "ヒカリエ" {
            jusyo = "150-8510 東京都渋谷区渋谷2-21-1"
            ido = 35.659025
            keido = 139.703473
            // key = "0"
            
        }else if titleStr == "渋谷マークシティ"{
            
            jusyo = "150-0043 東京都渋谷区道玄坂１丁目１２−１"
            ido = 35.658042
            keido = 139.698262
            // // = "1"
        }else if titleStr == "渋谷１０９"{
            jusyo = "150-0043 東京都渋谷区道玄坂２丁目２９−１"
            ido = 35.659564
            keido = 139.698753
            // key = "2"
        }else if titleStr == "LOFT" {
            jusyo = "150-0042 東京都渋谷区宇田川町21-1"
            ido = 35.661106
            keido = 139.699524
            // key = "3"
        }else if titleStr == "東急ハンズ"{
            jusyo = "150-0002 東京都渋谷区宇田川町１２−１８"
            ido = 35.662132
            keido = 139.697807
            // key = "4"
        }else if titleStr == "新宿バッティングセンター"{
            jusyo = "東京都新宿区歌舞伎町２－２１－１３"
            ido = 35.696629
            keido = 139.704382
            // key = "5"
        }else if titleStr == "新宿御苑"{
            jusyo = "160-0014 東京都新宿区内藤町１１"
            ido = 35.685176
            keido = 139.710052
            // key = "6"
        }else if titleStr == "新宿中央公園"{
            jusyo = "160-0023 東京都新宿区西新宿2丁目11"
            ido = 35.689117
            keido = 139.689719
            // key = "7"
        }else if titleStr == "東京都庁展望室"{
            jusyo = "163-8001 東京都新宿区西新宿２丁目８−１"
            ido = 35.689634
            keido = 139.692101
            // key = "8"
            
        }else if titleStr == "博品館"{
            jusyo = "163-8001 東京都新宿区西新宿２丁目８−１"
            ido = 35.689185
            keido = 139.691648
            // key = "9"
            
        }else if titleStr == "碑文谷公園"{
            jusyo = "152-0003 東京都目黒区碑文谷六丁目9番11号"
            ido = 35.625710
            keido = 139.682424
            // key = "10"
            
        }else if titleStr == "祐天寺"{
            jusyo = "153-0061 東京都目黒区中目黒５丁目２４番５３号"
            ido = 35.637380
            keido = 139.692911
            // key = "11"
            
            
        }else if titleStr == "現代彫刻美術館"{
            jusyo = "153-0061 東京都目黒区中目黒4-12-18"
            ido = 35.635958
            keido = 139.703087
            // key = "12"
            
        }else if titleStr == "清水池公園"{
            jusyo = "152-0002 東京都目黒区目黒本町２丁目１２−１０"
            ido = 35.624385
            keido = 139.692372
            // key = "13"
            
        }else if titleStr == "自由が丘デパート"{
            jusyo = "152-0035東京都目黒区自由が丘１丁目２８番地８"
            ido = 35.608311
            keido = 139.669075
            // key = "14"
            
        }else if titleStr == "アクアパーク品川" {
            
            jusyo = "108-8611 東京都港区高輪4−10−30 品川プリンスホテル内"
            ido = 35.627829
            keido = 139.735087
            // key = "15"
            
        }else if titleStr == "PRENCE CINEMA品川"{
            jusyo = "108-0074 東京都港区高輪4−10−30 品川プリンスホテル アネックスタワー"
            ido = 35.628021
            keido = 139.735285
            // key = "16"
            
            
        }else if titleStr == "品川プリンスホテルボウリングセンター"{
            jusyo = "108-0074 東京都港区高輪４丁目１０−３０"
            ido = 35.628021
            keido = 139.735285
            // key = "17"
            
        }else if titleStr == "天王洲アイル"{
            jusyo = "東京都品川区 東品川2-3-8"
            ido = 35.623130
            keido = 139.750700
            // key = "18"
        }else if titleStr == "T.Y.HARBOR"{
            jusyo = "140-0002 東京都品川区東品川２丁目１−３"
            ido = 35.622983
            keido = 139.747321
            // key = "19"
        }else if titleStr == "日本科学未来館"{
            jusyo = "135-0064 東京都江東区青海２丁目３−６"
            ido = 35.619225
            keido = 139.776762
            // key = "20"        }else if titleStr == "キッザニア東京"{
            jusyo = "135-0061 東京都江東区豊洲２丁目４−９ アーバンドック ららぽーと豊洲 ノースポート"
            ido = 35.656288
            keido = 139.791560
            // key = "21"
        }else if titleStr == "大江戸温泉物語"{
            jusyo = "135-0064 東京都江東区青海２丁目6番3号"
            ido = 35.615491
            keido = 139.777509
            // key = "22"
            
        }else if titleStr == "お台場海浜公園"{
            jusyo = "135-0091 東京都港区台場１丁目"
            ido = 35.630737
            keido = 139.776045
            // key = "23"
        }else if titleStr == "ジョイポリス"{
            jusyo = "135-0091 東京都港区台場１丁目６−１ DECKS Tokyo Beach"
            ido = 35.628660
            keido = 139.775364
            // key = "24"
            
        }else if titleStr == "東京タワー"{
            jusyo = "105-0011 東京都港区芝公園４丁目２−８"
            ido = 35.658581
            keido = 139.745433
            // = "25"
        }else if titleStr == "国立新美術館"{
            jusyo = "106-8558 東京都港区六本木７丁目２２−２"
            ido = 35.665289
            keido = 139.726374
            // = "26"
        }else if titleStr == "虎ノ門ヒルズ"{
            jusyo = "東京都港区虎ノ門1丁目23番1-4号"
            ido = 35.666821
            keido = 139.749563
            // = "27"
            
        }else if titleStr == "六本木ヒルズ"{
            
            jusyo = "106-6108 東京都港区六本木６丁目１１−１"
            ido = 35.660464
            keido = 139.729249
            // = "28"
            
        }else if titleStr == "迎賓館赤坂離宮"{
            jusyo = "107-0051 東京都港区元赤坂２丁目１−１"
            ido = 35.680289
            keido = 139.728640
            // = "29"
            
        }else if titleStr == "渋谷マルイ"{
            
            jusyo = "150-0041 東京都渋谷区神南１丁目２２−６"
            ido = 35.660902
            keido = 139.701073
            // = "30"
            
        }else if titleStr == "cocoti SHIBUYA"{
            jusyo = "150-0002 東京都渋谷区渋谷1−23−16"
            ido = 35.662053
            keido = 139.702585
            // = "31"
        }
        else if titleStr == "高島屋"{
            jusyo = "151-8580 東京都渋谷区千駄ヶ谷５丁目２４−２"
            ido = 35.687585
            keido = 139.702277
            // = "32"
        }else if titleStr == "ルミネ新宿"{
            jusyo = "160-0023 東京都新宿区西新宿１丁目１−５"
            ido = 35.689477
            keido = 139.700545
            // = "33"
            
        }else if titleStr == "小田急デパート"{
            jusyo = "160-8001 東京都新宿区西新宿１−１−３"
            ido = 35.691322
            keido = 139.699558
            // = "34"
        }else if titleStr == "伊勢丹"{
            jusyo = "160-0022 東京都新宿区新宿３丁目１４−１"
            ido = 35.691637
            keido = 139.704616
            // = "35"
            
            
        }else if titleStr == "京王百貨店"{
            jusyo = "160-0023 東京都新宿区西新宿１丁目１−４"
            ido = 35.690211
            keido = 139.699161
            // = "36"
            
        }else if titleStr == "アトレ"{
            jusyo = "141-0021 東京都品川区上大崎２丁目１６−９"
            ido = 35.634082
            keido = 139.715884
            // = "37"
        }else if titleStr == "soffito 中目黒店"{
            jusyo = "153-0042 東京都目黒区青葉台1−17−1"
            ido = 35.659085
            keido = 139.703491
            // = "38"
            
        }else if titleStr == "MARcourt 自由が丘"{
            jusyo = "152-0035 東京都目黒区自由が丘２丁目１２−１９"
            ido = 35.607215
            keido = 139.667521
            // = "39"
            
        }else if titleStr == "無印用品　アトレ店"{
            jusyo = "141-0021 東京都品川区上大崎２−１６−９ アトレ目黒１ Ａ館"
            ido = 35.634101
            keido = 139.715751
            // = "40"
            
            
        }else if titleStr == "ひかり街"{
            jusyo = "152-0035 東京都目黒区自由が丘１丁目２７−２"
            ido = 35.609246
            keido = 139.669708
            // = "41"
            
        }else if titleStr == "アトレ品川"{
            jusyo = "108-0075 東京都港区港南２丁目１８−１"
            ido = 35.629023
            keido = 139.740704
            // = "43"
            
        }else if titleStr == "ユニクロ　エキュート　品川サウス"{
            jusyo = "108-0074 東京都港区 高輪３丁目２６−２７ JR品川駅改札内 エキュート品川サウス"
            ido = 35.627996
            keido = 139.738445
            // = "44"
            
        }else if titleStr == "ウィング高輪"{
            jusyo = "108-0074 東京都港区高輪３−２６−２６"
            ido = 35.628246
            keido = 139.738018
            // = "45"
            
            
        }else if titleStr == "エキュート品川サウス"{
            jusyo = "108-0074 東京都港区高輪３丁目２６−２７"
            ido = 35.628576
            keido = 139.739392
            // = "46"
            
            
            
        }else if titleStr == "アクアシティお台場"{
            jusyo = "135-0091 東京都港区台場１丁目７−１"
            ido = 35.627819
            keido = 139.773568
            // = "47"
            
            
            
        }else if titleStr == "デックス東京ビーチ"{
            jusyo = "135-0091 東京都港区台場１丁目６−１"
            ido = 35.629093
            keido = 139.775913
            // = "48"
            
            
            
        }else if titleStr == "ダイバーシティ東京プラザ"{
            jusyo = "135-0064 東京都江東区青海１−1−10"
            ido = 35.625046
            keido = 139.775453
            // = "49"
            
            
        }else if titleStr == "トイザラス"{
            jusyo = "135-8707 東京都港区台場１丁目７−１ アクアシティお台場T101"
            ido = 35.627542
            keido = 139.772634
            // = "50"
            
            
            
        }else if titleStr == "マルエツ　お台場店"{
            jusyo = "135-0091 東京都港区台場１−５−３"
            ido = 35.629797
            keido = 139.777740
            // = "51"
            
            
        }else if titleStr == "東京ミッドタウン"{
            jusyo = "107-0052 東京都港区赤坂９丁目７−１"
            ido = 35.665876
            keido = 139.731000
            // = "52"
            
        }else if titleStr == "マルエツ"{
            jusyo = "108-0075 東京都港区港南4−6−7"
            ido = 35.627828
            keido = 139.750617
            // = "53"
            
        }else if titleStr == "青山ショッピングセンター"{
            jusyo = "107-0061 東京都港区北青山３丁目３－７"
            ido = 35.668369
            keido = 139.714883
            // = "54"
            
        }else if titleStr == "東急ストア"{
            jusyo = "141-0021 東京都品川区上大崎２丁目２４−１３"
            ido = 35.635210
            keido = 139.714770
            // = "55"
            
            
        }else if titleStr == "ヒルサイドテラス"{
            jusyo = "150-0033 東京都渋谷区猿楽町１８−８"
            ido = 35.648557
            keido = 139.700572
            // = "56"
            
            
        }else if titleStr == "TENOHA代官山"{
            jusyo = "150-0034　東京都渋谷区代官山町20-23 TENOHA代官山"
            ido = 35.648780
            keido = 139.702366
            // = "57"
            
        }else if titleStr == "東京ミッドタウン"{
            jusyo = "107-0052 東京都港区赤坂９丁目７−１"
            ido = 35.665876
            keido = 139.731000
            // = "58"
                      
        }
        
        saveData.set(ido, forKey: "ido")
        saveData.set(keido, forKey: "keido")
        
        comentdasu = saveData.object(forKey: "coment") as! String
        coment.text = String(describing: comentdasu)
        
        
        
        
        
        setlabel()
        // Do any additional setup after loading the view.
    }
    func setlabel() {
        kuwasii.text = jusyo
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        button.layer.cornerRadius = 4.0
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 4.0
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        saveData.set(coment.text, forKey: key)

        
        
        
        
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

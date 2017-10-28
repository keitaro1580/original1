//
//  ViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/05/13.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    @IBOutlet var Genrelabel: UILabel!
    @IBOutlet var tokorolabel:UILabel!
    @IBOutlet var gazouview:UIImageView!
    
    //@IBOutlet var lable2:UILabel!
    
    //宣言
    let saveData: UserDefaults = UserDefaults.standard

    var genre:String!

    
    //let saveData: UserDefaults = UserDefaults.standard
    //saveData.set(tokoroArray,forKey:"picker")

    //場所の配列
    var tokoroArray:[String] = ["新宿","渋谷","目黒","品川","お台場","港区"]
    var tokoroDone = String ()
    
    var gazouArray:[String] = ["sinnzixyuku.jpg","sibuya.jpeg","meguro.jpg","sinagawa.jpg","odaiba.jpg","minatoku.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        //乱数を生成 tokoroは変数
        let tokoro : Int = Int(arc4random_uniform(6))
        
        // 画像を配置する, UIImage を使う
        var image =  UIImage(named: gazouArray[tokoro])
        
        //画像切り抜き
        image = cropThumbnailImage(image: image!, w: 360, h: 240)
        
        
        // UIImageView の image に, 上で作った画像データを入れる
        
        gazouview.image = image
        
        //その乱数のインデックスの配列の値をラベルに表示する
        tokorolabel.text = tokoroArray[tokoro]
        
        tokoroDone = tokoroArray[tokoro]
        
        
        print(tokoro)
        
        //値を読み込む
     
        //ジャンルのデータ（ユーザーデフォルト）
        genre = saveData.object(forKey:"Genre") as! String
//        genre = "ファッション"
//        GenreArray = saveData.object(forKey:"Genre") as! String
        
        Genrelabel.text = String(genre)
        
        
        //tokoroArray = saveData.object(forKey: "picker")
       // saveData.set(tokoroArray, forkey:"tokoro")
        
    }
    
    func cropThumbnailImage(image :UIImage, w:Int, h:Int) ->UIImage
    {
        // リサイズ処理
        let origRef    = image.cgImage
        let origWidth  = Int(origRef!.width)
        let origHeight = Int(origRef!.height)
        var resizeWidth:Int = 0, resizeHeight:Int = 0
        
        if (origWidth < origHeight) {
            resizeWidth = w
            resizeHeight = origHeight * resizeWidth / origWidth
        } else {
            resizeHeight = h
            resizeWidth = origWidth * resizeHeight / origHeight
        }
        
        let resizeSize = CGSize.init(width: CGFloat(resizeWidth), height: CGFloat(resizeHeight))
        
        UIGraphicsBeginImageContext(resizeSize)
        
        image.draw(in: CGRect.init(x: 0, y: 0, width: CGFloat(resizeWidth), height: CGFloat(resizeHeight)))
        
        let resizeImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        // 切り抜き処理
        
        let cropRect  = CGRect.init(x: CGFloat((resizeWidth - w) / 2), y: CGFloat((resizeHeight - h) / 2), width: CGFloat(w), height: CGFloat(h))
        let cropRef   = resizeImage!.cgImage!.cropping(to: cropRect)
        let cropImage = UIImage(cgImage: cropRef!)
        
        return cropImage
    }
    

    @IBAction func OK(){
        
        //テーブルビューに入れる場所ユーザーデフォルト
        saveData.set(tokoroDone, forKey: "tokoro")
        saveData.set(genre, forKey: "Genre")
        
    //tokoroArray = saveData.object(forKey: "picker") as! [String]
    //lable2.text = pickerviewArray
        
        
    }
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



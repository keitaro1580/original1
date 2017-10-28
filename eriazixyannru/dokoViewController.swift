//
//  dokoViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/06/10.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit

class dokoViewController: UIViewController {
    
    @IBOutlet var lable: UILabel!
    @IBOutlet var gurafu: UIImageView!
    @IBOutlet var startButton: UIButton!
    var timer1: Timer = Timer()
    var timer2: Timer = Timer()
    var interval: Double = 10.0
    var count: Double = 0.0
    var x:Bool=true
    
    
    @IBAction func startbutton(){
       
       
        if startButton.titleLabel?.text == "STOP" {
            //timer1が動いているならば
            if timer1.isValid{
                //timer1を止める
                timer1.invalidate()
            }
            //timer2が
            if !timer2.isValid {
                //timer2を
                //1-100を繰り返す時に
                
                //少数型のintervalを -0.01ずつ小さくする
                // for i in 1...100  {
                // interval = interval - 0.01
                
                timer2 = Timer.scheduledTimer(
                    timeInterval: interval,
                    target: self,
                    selector: #selector(self.down),
                    userInfo: nil,
                    repeats: true)
                
                // timer1.invalidate()
                // print(self.down())
                
                //}
                
                let storyboard: UIStoryboard = self.storyboard!
                let viewController = storyboard.instantiateViewController(withIdentifier: "View Controller")
                present(viewController, animated: true, completion: nil)
                
                
                

                
                
                
            }
            
        } else if startButton.titleLabel?.text == "START" {
            if !timer1.isValid{
                timer1 = Timer.scheduledTimer(
                    timeInterval: 0.002,
                    target: self,
                    selector: #selector(self.up),
                    userInfo: nil,
                    repeats: true)
                
                // print(self.up())
                
                let angle:CGFloat = CGFloat((self.up() * M_PI) / 180.0)
                gurafu.transform = CGAffineTransform(rotationAngle: angle)
                
                startButton.setTitle("STOP", for: .normal)
            }
        }
        
        
    }
    
    let saveData: UserDefaults = UserDefaults.standard
    var genre : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
        genre = saveData.object(forKey:"Genre") as! String
        saveData.set(genre, forKey: "Genre")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        lable.layer.cornerRadius = 4.0
        lable.layer.borderColor = UIColor.white.cgColor
        lable.layer.borderWidth = 4.0

        
        startButton.setTitle("START", for: .normal)
        timer1 = Timer()
        timer2 = Timer()
        interval = 10.0
        count = 0.0
        x=true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func up ()->Double{
        count = count + 1.0
        // print(count)
        if count >= 360{
            count = 0.0
        }
        let angle:CGFloat = CGFloat((count * M_PI) / 180.0)
        gurafu.transform = CGAffineTransform(rotationAngle: angle)
        
        return count
    }
    
    func down ()->Double{
        count = count + 1.0
        //countDown:int=100
        //値が減っていく
        
        // print(count)
        if count >= 0.0{
            count=360
        }
        let angle:CGFloat = CGFloat((count * M_PI) / 180.0)
        gurafu.transform = CGAffineTransform(rotationAngle: angle)
        return(count)
    }

    


    // return count
    //ここまで
    //}
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}

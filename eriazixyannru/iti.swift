//
//  iti.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/08/20.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit
import Foundation
import CoreLocation

class iti: UIViewController, CLLocationManagerDelegate {
    
    
    
    @IBOutlet var latTextField: UITextField!
    
    
    
    var declaration:CLLocationManager! = CLLocationManager()
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if CLLocationManager.locationServicesEnabled() {
            self.declaration = CLLocationManager()
            self.declaration.delegate = self
            self.declaration.startUpdatingLocation()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            declaration.requestWhenInUseAuthorization()
        case .restricted, .denied:
            break
        case .authorizedAlways, .authorizedWhenInUse:
            break
        }
        /* if CLLocationManager.locationServicesEnabled() {
         self.declaration = CLLocationManager()
         self.declaration.delegate = self
         self.declaration.startUpdatingLocation()
         */
    }
    
    
    
    // 位置情報が更新されるたびに呼ばれる
    
    
    @IBAction func button(){
        if CLLocationManager.locationServicesEnabled() {
            //            self.declaration = CLLocationManager()
            //            self.declaration.delegate = self
            //            self.declaration.startUpdatingLocation()
            
            declaration.requestLocation()
        }
    }
    
    @IBAction func onClickGetLocationButton(sender: UIButton) {
        declaration.requestLocation()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = manager.location {
            //                latTextField.text = "緯度：\(location.coordinate.latitude)"
            //                latTextField.text = "経度：\(location.coordinate.longitude)"
            print(location)
            
            
            
            print("緯度:\(location.coordinate.latitude) 経度:\(location.coordinate.longitude) 取得時刻:\(location.timestamp.description)")
        
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error")
    }
    
    
}

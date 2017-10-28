//
//  PodfileViewController.swift
//  eriazixyannru
//
//  Created by KeitaroKawahara on 2017/08/18.
//  Copyright © 2017年 keitaro. All rights reserved.
//

import UIKit
import MapKit


class PodfileViewController: UIViewController,MKMapViewDelegate {
    //ユーザーデフォルトアクセス
     let saveData: UserDefaults = UserDefaults.standard
    
    @IBOutlet var mapView: MKMapView!
    
    var ido:Double!
    var keido:Double!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ido = saveData.object(forKey:"ido") as! Double
        keido = saveData.object(forKey:"keido") as! Double
        
        let location:CLLocationCoordinate2D
            = CLLocationCoordinate2DMake(ido,keido)

                
        mapView.setCenter(location, animated:true)
        
        
        //縮尺
        let latDist : CLLocationDistance = 1000
        let lonDist : CLLocationDistance = 1000
        
        let region: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(location, latDist, lonDist)
        
        mapView.setRegion(region, animated: true)
        mapView.mapType = MKMapType.standard
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



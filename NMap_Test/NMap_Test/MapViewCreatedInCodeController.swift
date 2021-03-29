//
//  ViewController.swift
//  NMap_Test
//
//  Created by 백인찬 on 2021/03/29.
//

import UIKit
import NMapsMap

public let DEFAULT_CAMERA_POSITION = NMFCameraPosition(NMGLatLng(lat: 37.5666102, lng: 126.9783881), zoom: 14, tilt: 0, heading: 0)
public let primaryColor = UIColor(red: 25.0/255.0, green: 192.0/255.0, blue: 46.0/255.0, alpha: 1)

class ViewController: UIViewController {
    @IBOutlet var naverMapView: NMFNaverMapView!
    
    var mapView: NMFMapView {
        return naverMapView.mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 0, green: 211/255, blue: 83/255, alpha: 1.0)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        mapView.moveCamera(NMFCameraUpdate(position: DEFAULT_CAMERA_POSITION))
    }
}

extension NMGLatLng {
    func positionString() -> String {
        return String(format: "(%.5f, %.5f)", lat,lng)
    }
}



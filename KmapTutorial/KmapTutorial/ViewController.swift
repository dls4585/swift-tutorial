//
//  ViewController.swift
//  KmapTutorial
//
//  Created by 백인찬 on 2021/03/31.
//

import UIKit

class ViewController: UIViewController, MTMapViewDelegate {
    
    var mapView: MTMapView?
    var mapPoint1: MTMapPoint?
    var poiItem1: MTMapPOIItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mapView = MTMapView(frame: self.view.bounds)
        if let mapView = mapView {
            mapView.setMapCenter(MTMapPoint(geoCoord: MTMapPointGeo(latitude: 37.54661431932812, longitude: 126.84664605767114)), zoomLevel: -3, animated: true)
            mapView.delegate = self
            mapView.baseMapType = .standard
            
            mapView.showCurrentLocationMarker = true
            mapView.currentLocationTrackingMode = .onWithHeading
            
            
            
            // 마커 추가
            self.mapPoint1 = MTMapPoint(geoCoord: MTMapPointGeo(latitude: 37.54661431932812, longitude: 126.84664605767114))
            
            poiItem1 = MTMapPOIItem()
            poiItem1?.markerType = MTMapPOIItemMarkerType.bluePin
            poiItem1?.mapPoint = mapPoint1
            poiItem1?.itemName = "우리집"
            mapView.add(poiItem1)
            
            
            
            self.view.addSubview(mapView)
        }
        
    }


}


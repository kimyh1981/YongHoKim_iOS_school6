//
//  ViewController.swift
//  MapViewExample
//
//  Created by KimYong Ho on 06/04/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


final class ViewController: UIViewController {
@IBOutlet weak var coordinateLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        moveToInitialCoordinate(())
        
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .denied, .restricted:
            print("앱을 사용하기 위해서는 위치 정보 사용 권한이 필요합니다.")
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.requestLocation()
        }
    }
    
    @IBAction func moveToInitialCoordinate(_ sender: Any) {
        let center = CLLocationCoordinate2D(latitude: 37.572851, longitude: 126.976881)
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegionMake(center, span)
        mapView.setRegion(region, animated: true)
        
    }
    
    @IBAction func startUpdatingLocation(_ sender: Any) {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .denied, .restricted:
            print("앱을 사용하기 위해서는 위치 정보 사용 권한이 필요합니다.")
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.distanceFilter = kCLDistanceFilterNone
            locationManager.startUpdatingLocation()
        }
    }
    @IBAction func stopupdatingLocation(_ sender: Any) {
        locationManager.stopUpdatingLocation()
    }
    
    @IBAction func updateCurrentLocation(_ sender: Any) {
        let coordinate = mapView.centerCoordinate
        coordinateLabel.text = String(format: "위도: %2.4f, 경도: %2.4f", arguments: [coordinate.latitude, coordinate.longitude])
    }
    
    @IBAction func addAnnotationAtCenter(_ sender: Any) {
        let annotation = MKPointAnnotation()
        annotation.title = "MapCenter"
        annotation.coordinate = mapView.centerCoordinate
        mapView.addAnnotation(annotation)
        coordinateLabel.text = "Annotation added."
    }
    
    @IBAction func addAnnotationAtNamsan(_ sender: Any) {
        let namsan = MKPointAnnotation()
        namsan.title = "남산"
        namsan.subtitle = "남산타워"
        namsan.coordinate = CLLocationCoordinate2D(latitude: 37.5514, longitude: 126.9880)
        mapView.addAnnotation(namsan)
    }
    
    @IBAction func removeAllAnnotations(_ sender: Any) {
        mapView.removeAnnotations(mapView.annotations)}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let coordinate = location.coordinate
        coordinateLabel.text = String(format: "위도: %2.4f, 경도: %2.4f", arguments: [coordinate.latitude, coordinate.longitude])
        }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("------------- [ didFailWithError ] -------------")
        print(error.localizedDescription)
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse, .authorizedAlways:
            print("Authorized")
        default:
            print("Unauthorized")
        }
    }
}
    
    
    
    
    
    
    
    
    














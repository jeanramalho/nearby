//
//  HomeViewController.swift
//  nearby
//
//  Created by Jean Ramalho on 06/01/25.
//
import Foundation
import UIKit
import MapKit

class HomeViewController: UIViewController {
    private let places: [Place] = []
    private let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view = homeView
    }
}

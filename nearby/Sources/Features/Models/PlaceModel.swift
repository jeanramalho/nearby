//
//  PlaceModel.swift
//  nearby
//
//  Created by Jean Ramalho on 06/01/25.
//
import Foundation

struct Place: Decodable {
    let imageName: String
    let name: String
    let description: String
    let coupons: Int
    let latitude: Double
    let longitude: Double
    let adress: String
    let phone: String
    let cover: String
    let categoryId: String
}

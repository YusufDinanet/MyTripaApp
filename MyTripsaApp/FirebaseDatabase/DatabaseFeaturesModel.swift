//
//  DatabaseFeaturesModel.swift
//  MyTripsaApp
//
//  Created by Yusuf Dinanet on 25.12.2024.
//

struct Place: Identifiable, Codable {
    var id: String { formatted }
    let city: String
    let country: String
    let coordinates: [Double]
    let formatted: String
    let names: String
}

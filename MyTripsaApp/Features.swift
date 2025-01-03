//
//  Untitled.swift
//  MyTripsaApp
//
//  Created by Samet Berkay Üner on 19.12.2024.
//

public struct FeatureCollection: Decodable {
    public let features: [Feature]
}

public struct Feature: Decodable {
    public let properties: Properties
}

public struct Properties: Decodable {
    public let name: String?
}

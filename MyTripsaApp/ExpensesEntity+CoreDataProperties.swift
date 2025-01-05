//
//  ExpensesEntity+CoreDataProperties.swift
//  MyTripsaApp
//
//  Created by Yusuf Dinanet on 30.12.2024.
//
//

import Foundation
import CoreData


extension ExpensesEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ExpensesEntity> {
        return NSFetchRequest<ExpensesEntity>(entityName: "ExpensesEntity")
    }

    @NSManaged public var amount: Double
    @NSManaged public var category: String?
    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var userID: String?
    @NSManaged public var trip: TripEntity?
    
    public var unwrappedName: String {
        return name ?? ""
    }
    public var wrappedUserID: String {
        userID ?? "Unkown ıd"
    }
    public var unwrappedAmount: Double {
        return amount
    }
    public var unwrappedDate: Date {
        return date ?? Date()
    }
    public var unwrappedCategory: String {
        return category ?? ""
    }

}

extension ExpensesEntity : Identifiable {

}

//
//  MenuViewModel.swift
//  PizzaDeliverySwiftUI
//
//  Created by Олег Федоров on 26.06.2022.
//

import Foundation

class MenuViewModel: ObservableObject {
    
    static let shared = MenuViewModel()
    private init() {}
    
    var recommendedProducts = [
        Product(id: "1",
                title: "Peperroni",
                imageURL: "not found",
                price: 10,
                description: "Traditional italian pizza"),
        Product(id: "2",
                title: "Margarita",
                imageURL: "not found",
                price: 8,
                description: "Pizza with cheese and tomatoes"),
        Product(id: "3",
                title: "Cheese Pizza",
                imageURL: "not found",
                price: 12,
                description: "Pizza with 4 types of cheese"),
        Product(id: "4",
                title: "Diablo",
                imageURL: "not found",
                price: 14,
                description: "Spicy pizza with vegetables and meat")
    ]
}

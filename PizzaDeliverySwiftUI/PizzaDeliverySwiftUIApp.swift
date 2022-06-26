//
//  PizzaDeliverySwiftUIApp.swift
//  PizzaDeliverySwiftUI
//
//  Created by Олег Федоров on 26.06.2022.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct PizzaDeliverySwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
